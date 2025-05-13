import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:path/path.dart' as path;
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart';
import 'package:audio_session/audio_session.dart';

class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal() {
    _init();
  }

  final _audioRecorder = AudioRecorder();
  AudioPlayer _audioPlayer = AudioPlayer(); // 去掉final以便于重新创建
  AudioPlayer _durationPlayer = AudioPlayer(); // 去掉final以便于重新创建
  
  String? _currentRecordingPath;
  bool _isRecording = false;
  bool _isPlaying = false;
  bool _isDisposed = false;
  Timer? _recordingTimer;
  StreamSubscription? _playingSubscription;
  
  // 当前录音时长（毫秒）
  int _recordingDuration = 0;
  
  // 当前播放的音频文件路径
  String? _currentPlayingPath;
  
  // 重试计数器
  int _playRetryCount = 0;
  static const int _maxPlayRetries = 3;

  // Getters
  bool get isRecording => _isRecording;
  bool get isPlaying => _isPlaying;
  int get recordingDuration => _recordingDuration;
  String? get currentPlayingPath => _currentPlayingPath;

  // 初始化音频服务
  Future<void> _init() async {
    try {
      print('初始化音频服务...');
      
      // 检查麦克风权限
      final hasPermission = await _audioRecorder.hasPermission();
      print('麦克风权限状态: $hasPermission');
      
      // 确保录音文件目录存在
      try {
        final appDir = await getApplicationDocumentsDirectory();
        final recordingDir = Directory('${appDir.path}/chat_media');
        if (!await recordingDir.exists()) {
          await recordingDir.create(recursive: true);
          print('已创建录音目录: ${recordingDir.path}');
        } else {
          print('录音目录已存在: ${recordingDir.path}');
        }
      } catch (e) {
        print('创建录音目录失败: $e');
      }
      
      // 配置音频播放器
      await _audioPlayer.setVolume(1.0);
      await _audioPlayer.setLoopMode(LoopMode.off);
      print('音频播放器基本配置已设置');
      
      // 设置音频会话配置
      try {
        final session = await AudioSession.instance;
        
        // 首先激活会话
        await session.setActive(true);
        print('音频会话已激活');
        
        // 然后配置会话
        await session.configure(AudioSessionConfiguration(
          avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
          avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth | 
                                          AVAudioSessionCategoryOptions.defaultToSpeaker,
          avAudioSessionMode: AVAudioSessionMode.defaultMode,
          avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
          avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
          androidAudioAttributes: const AndroidAudioAttributes(
            contentType: AndroidAudioContentType.music,
            usage: AndroidAudioUsage.media,
          ),
          androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
          androidWillPauseWhenDucked: false,
        ));
        print('音频会话配置成功');
        
        // 监听音频会话中断
        session.interruptionEventStream.listen((event) {
          print('音频中断事件: ${event.begin ? "开始" : "结束"}, 类型: ${event.type}');
          if (event.begin) {
            // 音频被中断
            if (_isPlaying) {
              _audioPlayer.pause();
              print('由于中断暂停播放');
            }
          } else {
            // 中断结束，如果之前正在播放则恢复
            if (event.type == AudioInterruptionType.duck) {
              // 恢复音量
              _audioPlayer.setVolume(1.0);
              print('音量已恢复');
            } else if (event.type == AudioInterruptionType.pause && _isPlaying) {
              // 恢复播放
              _audioPlayer.play();
              print('播放已恢复');
            }
          }
        });
      } catch (e) {
        print('音频会话配置失败: $e');
      }
      
      print('音频服务初始化完成');
    } catch (e) {
      print('Error initializing audio service: $e');
    }
  }

  // 请求麦克风权限
  Future<bool> _requestMicrophonePermission() async {
    print('请求麦克风权限');
    
    try {
      // 使用 permission_handler 获取详细的权限状态
      final permissionStatus = await Permission.microphone.status;
      print('详细的麦克风权限状态: $permissionStatus');
      
      if (permissionStatus.isGranted) {
        print('麦克风权限已授予 (permission_handler)');
        return true;
      }
      
      // 如果没有权限，尝试通过系统对话框请求
      print('尝试请求麦克风权限');
      final requestResult = await Permission.microphone.request();
      print('权限请求结果: $requestResult');
      
      if (requestResult.isGranted) {
        print('麦克风权限已获取');
        return true;
      } else {
        print('用户拒绝了麦克风权限请求');
        return false;
      }
    } catch (e) {
      print('请求麦克风权限时出错: $e');
      return false;
    }
  }

  // 开始录音
  Future<String?> startRecording() async {
    if (_isDisposed) return null;
    
    print('====== 开始录音流程 ======');
    
    // 请求麦克风权限，使用permission_handler直接请求权限
    try {
      print('检查麦克风权限');
      var micStatus = await Permission.microphone.status;
      print('麦克风权限状态: $micStatus');
      
      if (!micStatus.isGranted) {
        print('请求麦克风权限');
        micStatus = await Permission.microphone.request();
        print('权限请求结果: $micStatus');
        
        if (!micStatus.isGranted) {
          print('麦克风权限被拒绝');
          return null;
        }
      }
    } catch (e) {
      print('权限检查出错: $e');
      return null; // 明确返回null，表示录音启动失败
    }
    
    // 如果已经在录音，先停止
    if (_isRecording) {
      print('已经在录音中，先停止当前录音');
      await stopRecording();
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    // 停止所有播放
    await stopPlaying();
    await Future.delayed(const Duration(milliseconds: 300));
    
    try {
      // 重置和清理
      _recordingTimer?.cancel();
      _recordingDuration = 0;
      
      // 为iOS专门配置录音会话
      if (Platform.isIOS) {
        print('重置iOS音频会话状态...');
        
        try {
          final session = await AudioSession.instance;
          
          // 完全停用会话
          await session.setActive(false);
          await Future.delayed(const Duration(milliseconds: 500));
          
          // 释放任何可能的录音资源
          try {
            // 确保没有进行中的录音
            if (await _audioRecorder.isRecording()) {
              print('检测到录音器正在运行，停止...');
              await _audioRecorder.stop();
              await Future.delayed(const Duration(milliseconds: 500));
            }
          } catch (e) {
            print('停止现有录音出错: $e');
            // 继续执行，因为我们会创建新的录音会话
          }
          
          // 专门配置录音会话
          await session.configure(AudioSessionConfiguration(
            avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
            avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.defaultToSpeaker | 
                                            AVAudioSessionCategoryOptions.allowBluetooth,
            avAudioSessionMode: AVAudioSessionMode.videoRecording, // 使用videoRecording模式更适合录音
            avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
            androidAudioAttributes: const AndroidAudioAttributes(
              contentType: AndroidAudioContentType.speech,
              usage: AndroidAudioUsage.voiceCommunication,
            ),
            androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientExclusive,
          ));
          
          // 强制激活会话
          final activateResult = await session.setActive(true, avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation);
          print('iOS录音会话激活结果: $activateResult');
          
          if (!activateResult) {
            print('iOS录音会话激活失败，尝试再次激活');
            await Future.delayed(const Duration(milliseconds: 300));
            final secondAttempt = await session.setActive(true);
            print('iOS录音会话再次激活结果: $secondAttempt');
            if (!secondAttempt) {
              print('iOS录音会话无法激活，录音可能失败');
            }
          }
        } catch (e) {
          print('iOS音频会话配置错误: $e');
        }
      } else {
        // Android平台也重置一下音频会话
        try {
          final session = await AudioSession.instance;
          await session.configure(AudioSessionConfiguration(
            androidAudioAttributes: const AndroidAudioAttributes(
              contentType: AndroidAudioContentType.speech,
              usage: AndroidAudioUsage.voiceCommunication,
            ),
            androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientExclusive,
          ));
        } catch (e) {
          print('Android音频会话配置错误: $e');
        }
      }
      
      // 先创建录音文件目录
      final appDir = await getApplicationDocumentsDirectory();
      final recordingDir = Directory('${appDir.path}/chat_media');
      if (!await recordingDir.exists()) {
        await recordingDir.create(recursive: true);
        print('录音目录已创建: ${recordingDir.path}');
      }
      
      // 检查所有可能的旧录音器实例并停止
      try {
        // 确保没有进行中的录音
        if (await _audioRecorder.isRecording()) {
          print('检测到录音器正在运行，停止...');
          await _audioRecorder.stop();
          await Future.delayed(const Duration(milliseconds: 500));
        }
      } catch (e) {
        print('检查录音状态出错: $e');
      }
      
      // 生成录音文件路径
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final filePath = '${recordingDir.path}/${timestamp}_voice_$timestamp.m4a';
      
      print('录音文件将保存到: $filePath');
      
      // 确保录音文件夹存在
      final recordingDirFile = File(filePath).parent;
      if (!await recordingDirFile.exists()) {
        await recordingDirFile.create(recursive: true);
        print('确保录音目录存在: ${recordingDirFile.path}');
      }
      
      // 检查目录权限
      try {
        final testFile = File('${recordingDirFile.path}/test_write.tmp');
        await testFile.writeAsString('test');
        await testFile.delete();
        print('目录写入权限正常');
      } catch (e) {
        print('目录权限检查失败: $e');
        return null; // 如果无法写入文件，直接返回失败
      }
      
      // 配置录音选项
      final recorderConfig = RecordConfig(
        encoder: AudioEncoder.aacLc, // AAC编码
        bitRate: 128000,
        sampleRate: 44100,
      );
      
      // 开始录音前，确保当前路径设置正确
      _currentRecordingPath = filePath;
      
      // 创建备份文件路径 - 在临时目录中也保存一份
      try {
        final tempDir = await getTemporaryDirectory();
        final backupFilePath = '${tempDir.path}/${timestamp}_voice_$timestamp.m4a';
        print('备份录音文件路径: $backupFilePath');
        
        // 确保临时目录存在
        final backupDirFile = File(backupFilePath).parent;
        if (!await backupDirFile.exists()) {
          await backupDirFile.create(recursive: true);
        }
      } catch (e) {
        print('创建备份路径出错: $e');
        // 继续执行，这只是备份
      }
      
      // 开始录音
      print('调用record库开始录音...');
      try {
        // 尝试启动录音
        await _audioRecorder.start(
          recorderConfig, 
          path: filePath,
        );
        
        // 启动计时器
        _recordingTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
          if (!_isDisposed) {
            _recordingDuration += 100;
          }
        });
        
        _isRecording = true;
        print('录音启动命令已发送，路径: $filePath');
        
        // 验证录音是否真的开始
        await Future.delayed(const Duration(milliseconds: 500));
        final isActuallyRecording = await _audioRecorder.isRecording();
        print('录音状态确认: $isActuallyRecording');
        
        if (!isActuallyRecording) {
          print('录音没有成功启动');
          _recordingTimer?.cancel();
          _isRecording = false;
          return null;
        }
        
        return filePath;
      } catch (e) {
        print('启动录音失败: $e');
        _recordingTimer?.cancel();
        _isRecording = false;
        
        if (e is PlatformException) {
          print('平台错误信息: ${e.code} - ${e.message}');
        }
        
        return null;
      }
    } catch (e) {
      print('录音流程出错: $e');
      return null;
    }
  }

  // 停止录音
  Future<String?> stopRecording() async {
    if (_isDisposed) return null;
    
    if (!_isRecording) {
      print('没有正在进行的录音，无需停止');
      return null;
    }
    
    print('====== 停止录音 ======');
    final String? currentPath = _currentRecordingPath;
    
    print('当前录音路径: $currentPath');
    if (currentPath == null || currentPath.isEmpty) {
      print('当前录音路径为空，无法停止录音');
      _isRecording = false;
      return null;
    }
    
    try {
      _recordingTimer?.cancel();
      
      // 再次确认录音状态
      final isRecordingActive = await _audioRecorder.isRecording();
      print('停止前确认录音状态: $isRecordingActive');
      
      // 停止录音
      print('调用record库停止录音');
      final recordedPath = await _audioRecorder.stop();
      _isRecording = false;
      print('录音已停止，返回路径: $recordedPath');
      
      // 如果返回的路径为空，尝试使用我们之前保存的路径
      final pathToCheck = recordedPath ?? currentPath;
      
      if (pathToCheck != null) {
        final file = File(pathToCheck);
        if (await file.exists()) {
          final fileSize = await file.length();
          print('录音文件大小: $fileSize 字节');
          if (fileSize > 0) {
            print('录音文件有效，返回路径: $pathToCheck');
            
            // 将录音文件复制到备份位置，防止后续意外丢失
            try {
              final appDir = await getApplicationDocumentsDirectory();
              final timestamp = DateTime.now().millisecondsSinceEpoch;
              final backupPath = '${appDir.path}/chat_media/backup_${timestamp}_${path.basename(pathToCheck)}';
              final backupFile = await file.copy(backupPath);
              print('已创建录音文件备份: ${backupFile.path}');
            } catch (e) {
              // 备份失败不影响主流程
              print('创建备份失败: $e');
            }
            
            // 给系统一点时间来释放麦克风资源
            await Future.delayed(const Duration(milliseconds: 500));
            
            // 作为一个额外的检查，验证文件仍然存在
            if (await File(pathToCheck).exists()) {
              return pathToCheck;
            } else {
              print('文件检查失败，可能已被删除: $pathToCheck');
            }
          }
          print('录音文件为空: $pathToCheck');
        } else {
          print('录音文件不存在: $pathToCheck');
        }
      } else {
        print('没有可用的录音文件路径');
      }
      
      // 如果使用的是我们自己的路径且录音成功了，但文件不存在，尝试检查临时目录
      if (currentPath != null && recordedPath == null) {
        try {
          // 尝试在多个位置查找文件
          
          // 1. 首先检查临时目录
          final tempDir = await getTemporaryDirectory();
          final fileName = path.basename(currentPath);
          final tempPath = '${tempDir.path}/$fileName';
          final tempFile = File(tempPath);
          
          // 2. 检查缓存目录
          final cacheDir = await getApplicationCacheDirectory();
          final cachePath = '${cacheDir.path}/$fileName';
          final cacheFile = File(cachePath);
          
          // 3. 检查应用文档目录
          final appDir = await getApplicationDocumentsDirectory();
          final appPaths = [
            '${appDir.path}/$fileName',
            '${appDir.path}/recordings/$fileName',
            '${appDir.path}/chat_media/$fileName',
          ];
          
          // 检查所有可能的路径
          final pathsToCheck = [tempPath, cachePath, ...appPaths];
          
          for (final pathToCheck in pathsToCheck) {
            final checkFile = File(pathToCheck);
            if (await checkFile.exists()) {
              final fileSize = await checkFile.length();
              print('在替代位置找到录音文件: $pathToCheck, 大小: $fileSize 字节');
              if (fileSize > 0) {
                // 尝试移动文件到正确的位置
                try {
                  final targetFile = File(currentPath);
                  if (!await targetFile.parent.exists()) {
                    await targetFile.parent.create(recursive: true);
                  }
                  
                  // 如果目标文件已存在，先检查是否有内容
                  if (await targetFile.exists()) {
                    final targetSize = await targetFile.length();
                    if (targetSize > 0) {
                      print('目标位置已存在非空文件，大小: $targetSize 字节');
                      return currentPath; // 直接返回已有文件
                    }
                    // 目标文件为空，可以覆盖
                    print('目标位置存在空文件，将覆盖');
                  }
                  
                  final movedFile = await checkFile.copy(currentPath);
                  if (await movedFile.exists()) {
                    print('成功将替代文件移动到目标位置: $currentPath');
                    return currentPath;
                  }
                } catch (e) {
                  print('移动替代文件失败: $e');
                  return pathToCheck; // 直接返回找到的文件
                }
              }
            }
          }
          
          print('在所有替代位置未找到录音文件');
        } catch (e) {
          print('查找替代文件失败: $e');
        }
      }
      
      print('录音文件为空或不存在');
      return null;
    } catch (e) {
      print('停止录音时出错: $e');
      _isRecording = false;
      
      // 尝试更详细地诊断
      if (e is PlatformException) {
        print('平台错误码: ${e.code}, 详情: ${e.message}');
      }
      
      return null;
    }
  }

  // 播放语音消息
  Future<void> playVoiceMessage(String filePath, {Function? onComplete, Function(dynamic)? onError}) async {
    if (_isDisposed) return;
    
    print('=================== 开始播放语音消息 ===================');
    print('播放请求路径: $filePath');
    
    // 重置重试计数器
    _playRetryCount = 0;
    
    // 文件路径检查和处理
    if (filePath.isEmpty) {
      print('无效的文件路径: 路径为空');
      if (onError != null) onError('Invalid file path: path is empty');
      return;
    }
    
    // 检查文件是否存在
    final file = File(filePath);
    if (!await file.exists()) {
      print('音频文件不存在: $filePath');
      
      // 尝试修复路径 - 应用重装后路径变化问题
      final fixedPath = await _tryFixAudioPath(filePath);
      if (fixedPath != null) {
        print('找到替代文件路径: $fixedPath');
        return playVoiceMessage(fixedPath, onComplete: onComplete, onError: onError);
      }
      
      if (onError != null) onError('Audio file does not exist');
      return;
    }
    
    final fileSize = await file.length();
    print('准备播放音频文件: $filePath (文件大小: $fileSize 字节)');
    
    // 停止当前播放
    if (_isPlaying) {
      print('正在停止当前播放...');
      await stopPlaying();
      // 给系统一点时间来释放音频资源
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    // 完全释放和重建播放器资源
    await _releaseAndRebuildAudioPlayer();
    
    // 开始播放尝试
    print('开始播放尝试');
    await _playVoiceMessageWithRetry(filePath, onComplete, onError);
  }
  
  // 完全释放和重建音频播放器资源
  Future<void> _releaseAndRebuildAudioPlayer() async {
    try {
      // 停止任何当前播放
      await _audioPlayer.stop();
      _playingSubscription?.cancel();
      _playingSubscription = null;
      
      // 释放旧播放器资源
      await _audioPlayer.dispose();
      print('旧播放器资源已释放');
      
      // 创建全新的播放器
      _audioPlayer = AudioPlayer();
      print('已创建新的播放器实例');
      
      // iOS平台特殊处理
      if (Platform.isIOS) {
        print('iOS设备：重置音频会话');
        
        try {
          final session = await AudioSession.instance;
          
          // 先完全停用会话
          await session.setActive(false, avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation);
          await Future.delayed(const Duration(milliseconds: 500));
          
          // 配置会话
          await session.configure(AudioSessionConfiguration(
            // 专门用于播放的配置
            avAudioSessionCategory: AVAudioSessionCategory.playback,
            avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.defaultToSpeaker, 
            avAudioSessionMode: AVAudioSessionMode.defaultMode,
            avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
            avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation,
            androidAudioAttributes: const AndroidAudioAttributes(
              contentType: AndroidAudioContentType.speech,
              usage: AndroidAudioUsage.media,
            ),
            androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
          ));
          print('音频会话已为播放配置');
          
          // 重新激活会话
          final activateResult = await session.setActive(true, avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.notifyOthersOnDeactivation);
          print('音频会话激活状态: $activateResult');
          
          if (!activateResult) {
            print('音频会话激活失败，尝试再次激活');
            await Future.delayed(const Duration(milliseconds: 300));
            final secondAttempt = await session.setActive(true);
            print('音频会话再次激活结果: $secondAttempt');
          }
        } catch (e) {
          print('配置iOS音频会话出错: $e');
        }
      }
      
      // 设置音量
      await _audioPlayer.setVolume(1.0);
      print('音量已设置为最大');
    } catch (e) {
      print('重建播放器时出错: $e');
    }
  }
  
  // 尝试修复音频文件路径 - 处理应用重装后路径变化问题
  Future<String?> _tryFixAudioPath(String originalPath) async {
    try {
      print('尝试修复音频文件路径: $originalPath');
      // 获取文件名
      final fileName = path.basename(originalPath);
      
      // 查找可能的替代路径
      final appDir = await getApplicationDocumentsDirectory();
      final mediaDir = Directory('${appDir.path}/chat_media');
      
      // 确保媒体目录存在
      if (!await mediaDir.exists()) {
        await mediaDir.create(recursive: true);
        print('Created missing media directory: ${mediaDir.path}');
        return null; // 目录不存在，无法找到替代文件
      }
      
      // 首先尝试直接查找原始文件名
      final directMatch = File('${mediaDir.path}/$fileName');
      if (await directMatch.exists() && await directMatch.length() > 0) {
        print('找到完全匹配的文件: ${directMatch.path}');
        return directMatch.path;
      }
      
      // 从文件名中提取时间戳标识符
      final fileNameParts = fileName.split('_');
      String? timestamp;
      
      if (fileNameParts.length >= 2) {
        timestamp = fileNameParts[0];
        print('从文件名提取时间戳: $timestamp');
      } else {
        // 如果文件名不符合预期格式，尝试从文件名中提取数字部分
        final regExp = RegExp(r'(\d+)');
        final match = regExp.firstMatch(fileName);
        if (match != null) {
          timestamp = match.group(0);
          print('从文件名提取数字作为时间戳: $timestamp');
        }
      }
      
      if (timestamp != null) {
        // 列出媒体目录中的所有文件
        try {
          final files = await mediaDir.list().toList();
          
          // 寻找匹配时间戳的文件
          for (var entity in files) {
            if (entity is File) {
              final name = path.basename(entity.path);
              if (name.startsWith('${timestamp}_') || 
                  name.contains('_${timestamp}_') || 
                  name.contains('_voice_$timestamp') ||
                  name.contains(timestamp)) {
                
                print('找到可能匹配的文件: ${entity.path}');
                
                // 检查文件是否有效
                if (await entity.exists()) {
                  final fileSize = await entity.length();
                  if (fileSize > 0) {
                    print('有效的替代文件: ${entity.path}, 大小: $fileSize 字节');
                    return entity.path;
                  }
                }
              }
            }
          }
        } catch (e) {
          print('列出目录文件失败: $e');
        }
      }
      
      // 尝试在临时目录中查找
      try {
        final tempDir = await getTemporaryDirectory();
        final tempFiles = await tempDir.list().toList();
        
        for (var entity in tempFiles) {
          if (entity is File) {
            final name = path.basename(entity.path);
            if ((timestamp != null && (name.contains(timestamp))) || 
                name.toLowerCase().endsWith('.m4a') || 
                name.toLowerCase().endsWith('.aac')) {
              
              print('在临时目录找到潜在音频文件: ${entity.path}');
              
              if (await entity.exists() && await entity.length() > 0) {
                // 尝试复制到媒体目录
                try {
                  final targetPath = '${mediaDir.path}/$name';
                  final targetFile = File(targetPath);
                  await entity.copy(targetPath);
                  print('已复制临时文件到媒体目录: $targetPath');
                  return targetPath;
                } catch (e) {
                  print('复制临时文件失败: $e');
                  return entity.path; // 返回原始临时文件路径
                }
              }
            }
          }
        }
      } catch (e) {
        print('检查临时目录失败: $e');
      }
      
      // 最后尝试：查找任何音频文件
      try {
        final files = await mediaDir.list().toList();
        for (var entity in files) {
          if (entity is File) {
            final name = path.basename(entity.path);
            if (name.toLowerCase().endsWith('.m4a') || name.toLowerCase().endsWith('.aac')) {
              if (await entity.exists() && await entity.length() > 0) {
                print('找到任意音频文件作为替代: ${entity.path}');
                return entity.path;
              }
            }
          }
        }
      } catch (e) {
        print('搜索任意音频文件失败: $e');
      }
      
      print('没有找到任何替代文件');
      return null;
    } catch (e) {
      print('修复音频路径过程出错: $e');
      return null;
    }
  }

  // 带重试的播放语音消息
  Future<void> _playVoiceMessageWithRetry(String filePath, Function? onComplete, Function(dynamic)? onError) async {
    if (_isDisposed) return;
    
    try {
      _currentPlayingPath = filePath;
      
      // 再次检查文件是否存在
      final file = File(filePath);
      if (!await file.exists()) {
        print('音频文件不存在: $filePath');
        
        // 再次尝试修复路径
        final fixedPath = await _tryFixAudioPath(filePath);
        if (fixedPath != null) {
          print('在播放重试中找到了替代文件: $fixedPath');
          return _playVoiceMessageWithRetry(fixedPath, onComplete, onError);
        }
        
        if (onError != null) onError('Audio file does not exist');
        return;
      }
      
      final fileSize = await file.length();
      if (fileSize <= 0) {
        print('音频文件为空: $filePath');
        if (onError != null) onError('Audio file is empty');
        return;
      }
      
      print('开始播放 (第 ${_playRetryCount + 1} 次尝试): $filePath, 文件大小: $fileSize 字节');
      
      try {
        // iOS特有问题处理
        if (Platform.isIOS) {
          print('使用iOS专用播放方法');
          
          // 重置播放器状态
          await _audioPlayer.stop();
          
          // 使用多种方法尝试播放
          bool sourceFailed = false;
          Duration? audioDuration;
          
          try {
            // 方法1: 直接使用setFilePath - 通常最可靠
            print('iOS方法1: 使用setFilePath');
            audioDuration = await _audioPlayer.setFilePath(filePath);
            print('文件加载成功，音频时长: ${audioDuration?.inMilliseconds ?? 0} 毫秒');
          } catch (e) {
            print('iOS setFilePath失败: $e，尝试替代方法');
            sourceFailed = true;
          }
          
          if (sourceFailed) {
            try {
              // 方法2: 使用Uri
              print('iOS方法2: 使用URI');
              final uri = Uri.file(filePath);
              final audioSource = AudioSource.uri(uri);
              audioDuration = await _audioPlayer.setAudioSource(audioSource);
              print('使用URI设置音频源成功');
            } catch (e) {
              print('iOS URI方法失败: $e，尝试文件方法');
              
              try {
                // 方法3: 使用File
                print('iOS方法3: 使用File');
                final audioSource = AudioSource.file(filePath);
                audioDuration = await _audioPlayer.setAudioSource(audioSource);
                print('使用File设置音频源成功');
              } catch (e) {
                print('iOS所有方法失败，最后错误: $e');
                throw e; // 抛出错误以触发重试机制
              }
            }
          }
          
          // 配置播放完成监听
          _playingSubscription?.cancel();
          _playingSubscription = _audioPlayer.processingStateStream.listen((state) {
            print('播放状态变化: $state');
            if (state == ProcessingState.completed) {
              print('播放完成');
              if (!_isDisposed && onComplete != null) onComplete();
              _isPlaying = false;
              _currentPlayingPath = null;
              _playingSubscription?.cancel();
            }
          });
          
          // 设置位置监听，帮助诊断是否真的在播放
          final positionStream = _audioPlayer.positionStream;
          positionStream.listen((position) {
            print('播放位置: ${position.inMilliseconds}ms / ${audioDuration?.inMilliseconds ?? 0}ms');
          });
          
          // 等待一段时间让播放器准备
          await Future.delayed(const Duration(milliseconds: 300));
          
          // 开始播放
          print('开始播放');
          await _audioPlayer.play();
          final playerState = _audioPlayer.playerState;
          print('播放状态: $playerState');
          _isPlaying = true;
          
          // 检查播放是否实际开始
          await Future.delayed(const Duration(milliseconds: 500));
          final position = await _audioPlayer.position;
          print('播放位置检查: ${position.inMilliseconds}ms');
          
          if (position.inMilliseconds < 10 && audioDuration != null && audioDuration.inMilliseconds > 0) {
            print('播放可能没有实际开始，尝试重新播放');
            await _audioPlayer.seek(Duration.zero);
            await _audioPlayer.play();
            
            // 再次检查
            await Future.delayed(const Duration(milliseconds: 500));
            final newPosition = await _audioPlayer.position;
            print('重新开始后播放位置: ${newPosition.inMilliseconds}ms');
            
            if (newPosition.inMilliseconds < 10) {
              print('播放还是没有开始，考虑重试');
              throw Exception('播放没有实际开始');
            }
          }
        } else {
          // Android播放方式
          print('Android: 使用标准File方法');
          final audioSource = AudioSource.file(filePath);
          await _audioPlayer.setAudioSource(audioSource);
          print('Android: 音频源设置成功');
          
          // 设置完成监听
          _playingSubscription?.cancel();
          _playingSubscription = _audioPlayer.processingStateStream.listen((state) {
            print('播放状态变化: $state');
            if (state == ProcessingState.completed) {
              print('播放完成');
              if (!_isDisposed && onComplete != null) onComplete();
              _isPlaying = false;
              _currentPlayingPath = null;
              _playingSubscription?.cancel();
            }
          });
          
          // 开始播放
          await _audioPlayer.play();
          _isPlaying = true;
        }
        
        // 设置进度监听
        print('播放已开始');
      } catch (e) {
        print('播放过程出错: $e');
        
        // 如果是异常，尝试重试
        if (_playRetryCount < _maxPlayRetries) {
          _playRetryCount++;
          print('重试播放 (${_playRetryCount}/${_maxPlayRetries})');
          
          // 重置播放器
          await _audioPlayer.stop();
          _isPlaying = false;
          
          // 等待一段时间后重试
          await Future.delayed(const Duration(milliseconds: 500));
          return _playVoiceMessageWithRetry(filePath, onComplete, onError);
        } else {
          _isPlaying = false;
          _currentPlayingPath = null;
          print('达到最大重试次数，播放失败');
          if (onError != null && !_isDisposed) onError(e);
        }
      }
    } catch (e) {
      print('播放过程异常: $e');
      _isPlaying = false;
      _currentPlayingPath = null;
      if (onError != null && !_isDisposed) onError(e);
    }
  }

  // 停止播放
  Future<void> stopPlaying() async {
    if (_isDisposed) return;
    if (!_isPlaying) return;
    
    try {
      await _audioPlayer.stop();
      _playingSubscription?.cancel();
      _isPlaying = false;
      _currentPlayingPath = null;
      print('播放已停止');
    } catch (e) {
      print('Error stopping audio: $e');
    }
  }

  // 获取音频文件时长（毫秒）
  Future<int> getAudioDuration(String filePath) async {
    if (_isDisposed) return 0;
    
    try {
      final file = File(filePath);
      if (!await file.exists()) {
        return 0;
      }
      
      // 使用临时播放器获取时长，避免干扰当前播放
      try {
        await _durationPlayer.stop(); // 确保先停止
        final duration = await _durationPlayer.setFilePath(filePath);
        return duration?.inMilliseconds ?? 0;
      } catch (e) {
        print('Error getting audio duration: $e');
        return 0;
      }
    } catch (e) {
      print('Error getting audio duration: $e');
      return 0;
    }
  }

  // 重新初始化音频服务
  Future<void> reinitialize() async {
    print('重新初始化音频服务...');
    
    // 停止任何正在进行的活动
    if (_isRecording) {
      await stopRecording();
    }
    
    if (_isPlaying) {
      await stopPlaying();
    }
    
    // 释放并重建播放器
    try {
      await _audioPlayer.dispose();
      _audioPlayer = AudioPlayer();
      await _audioPlayer.setVolume(1.0);
      await _audioPlayer.setLoopMode(LoopMode.off);
      
      // 释放并重建时长检测播放器
      await _durationPlayer.dispose();
      _durationPlayer = AudioPlayer();
      
      print('播放器已重建');
    } catch (e) {
      print('重建播放器出错: $e');
    }
    
    // 重置所有状态
    _isRecording = false;
    _isPlaying = false;
    _currentRecordingPath = null;
    _currentPlayingPath = null;
    _recordingDuration = 0;
    _playRetryCount = 0;
    
    // 取消任何计时器和订阅
    _recordingTimer?.cancel();
    _playingSubscription?.cancel();
    _playingSubscription = null;
    
    // 重新初始化音频会话
    try {
      if (Platform.isIOS) {
        final session = await AudioSession.instance;
        
        // 重置会话
        await session.setActive(false);
        await Future.delayed(const Duration(milliseconds: 300));
        
        // 重新配置会话
        await session.configure(AudioSessionConfiguration(
          avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
          avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth | 
                                        AVAudioSessionCategoryOptions.defaultToSpeaker,
          avAudioSessionMode: AVAudioSessionMode.defaultMode,
          avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
          avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
          androidAudioAttributes: const AndroidAudioAttributes(
            contentType: AndroidAudioContentType.music,
            usage: AndroidAudioUsage.media,
          ),
          androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
          androidWillPauseWhenDucked: false,
        ));
        
        // 激活会话
        await session.setActive(true);
        print('iOS音频会话已重置');
      }
    } catch (e) {
      print('重置音频会话出错: $e');
    }
    
    // 确保录音文件目录存在
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final recordingDir = Directory('${appDir.path}/chat_media');
      if (!await recordingDir.exists()) {
        await recordingDir.create(recursive: true);
        print('已创建录音目录: ${recordingDir.path}');
      }
    } catch (e) {
      print('检查录音目录出错: $e');
    }
    
    print('音频服务重新初始化完成');
    return;
  }

  // 销毁资源
  Future<void> dispose() async {
    if (_isDisposed) return;
    
    print('开始释放音频服务资源');
    _isDisposed = true;
    
    // 取消所有计时器和订阅
    _recordingTimer?.cancel();
    _playingSubscription?.cancel();
    _playingSubscription = null;
    
    try {
      // 停止录音
      if (_isRecording) {
        print('释放资源前停止录音');
        try {
          // 不等待结果，避免阻塞
          _audioRecorder.stop().timeout(
            const Duration(milliseconds: 500),
            onTimeout: () {
              print('停止录音超时，继续释放资源');
              return null;
            },
          );
        } catch (e) {
          print('停止录音时出错: $e');
        }
        _isRecording = false;
      }
      
      // 停止播放
      if (_isPlaying) {
        print('释放资源前停止播放');
        try {
          // 不等待结果，避免阻塞
          _audioPlayer.stop().timeout(
            const Duration(milliseconds: 500),
            onTimeout: () {
              print('停止播放超时，继续释放资源');
              return;
            },
          );
        } catch (e) {
          print('停止播放时出错: $e');
        }
        _isPlaying = false;
      }
      
      // 释放播放器资源
      print('释放播放器资源');
      try {
        await _audioPlayer.dispose().timeout(
          const Duration(milliseconds: 500),
          onTimeout: () {
            print('释放播放器超时，继续释放资源');
            return;
          },
        );
      } catch (e) {
        print('释放播放器时出错: $e');
      }
      
      // 释放时长检测播放器资源
      try {
        await _durationPlayer.dispose().timeout(
          const Duration(milliseconds: 500),
          onTimeout: () {
            print('释放时长检测播放器超时');
            return;
          },
        );
      } catch (e) {
        print('释放时长检测播放器时出错: $e');
      }
      
      // 重置所有状态
      _currentPlayingPath = null;
      _currentRecordingPath = null;
      _playRetryCount = 0;
      
      print('音频服务资源释放完成');
    } catch (e) {
      print('释放音频服务资源时发生错误: $e');
    }
  }
} 