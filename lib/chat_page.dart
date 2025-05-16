import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/user_model.dart';
import 'constants.dart';
import 'dart:math' as math;
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'services/audio_service.dart';
import 'services/chat_storage_service.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:record/record.dart';
import 'video_call_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'in_app_purchases_page.dart';

class ChatPage extends StatefulWidget {
  final UserModel user;
  
  const ChatPage({
    required this.user,
    Key? key,
  }) : super(key: key);
  
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];
  bool _isRecording = false;
  bool _isPickingImage = false;
  bool _isDisposed = false;
  bool _isRecordingOptionVisible = false;
  bool _isLoading = true;
  
  // Add user profile data
  String _userProfileName = 'User Name';
  String? _userProfileImage;
  
  // 音频服务
  final AudioService _audioService = AudioService();
  
  // 当前正在播放的语音消息ID
  String? _playingVoiceMessageId;
  
  // 录音动画控制器
  late AnimationController _recordingAnimationController;
  late Animation<double> _recordingAnimation;
  
  // 播放动画控制器
  late AnimationController _playbackAnimationController;
  
  // 长按录音相关变量
  bool _isLongPressActive = false;
  String? _currentRecordingPath;
  double _recordingDy = 0.0; // 记录手指垂直移动距离
  int _recordingDuration = 0; // 录音时长（毫秒）
  Timer? _recordingTimer; // 录音计时器
  
  // 波形动画相关
  final List<double> _waveHeights = List.generate(10, (_) => 0.0);
  final math.Random _random = math.Random();
  
  // Add credit balance variables
  int _textQuota = 0;
  int _pictureQuota = 0;
  int _voiceQuota = 0;
  int _videoQuota = 0;
  
  // 生命周期观察者
  late final _AppLifecycleObserver _lifecycleObserver;
  
  @override
  void initState() {
    super.initState();
    
    // 初始化录音动画控制器
    _recordingAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    
    _recordingAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _recordingAnimationController,
        curve: Curves.easeInOut,
      ),
    );
    
    // 开始重复动画
    _recordingAnimationController.repeat(reverse: true);
    
    // 初始化播放动画控制器 - 修改播放动画控制器的配置
    _playbackAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30), // 增加时长以匹配音频播放时间
    );
    
    // 添加播放动画控制器的监听器，确保完成后停止
    _playbackAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _playbackAnimationController.reset();
      }
    });
    
    // 请求麦克风权限
    _requestPermissions();
    
    // 加载历史消息
    _loadChatMessages();
    
    // 加载用户资料
    _loadUserProfile();
    
    // 加载信用额度
    _loadCreditBalances();
    
    // 初始化并添加生命周期观察者
    _lifecycleObserver = _AppLifecycleObserver(
      onResumed: () {
        if (mounted && !_isDisposed) {
          _loadCreditBalances();
        }
      },
    );
    WidgetsBinding.instance.addObserver(_lifecycleObserver);
  }
  
  // 加载用户资料
  Future<void> _loadUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _userProfileName = prefs.getString('userName') ?? 'User Name';
        _userProfileImage = prefs.getString('userImage');
      });
    } catch (e) {
      print("加载用户资料出错: $e");
    }
  }
  
  // 加载信用额度
  Future<void> _loadCreditBalances() async {
    // 现在所有功能都是免费的，不需要加载信用额度
  }
  
  // 请求所需权限
  Future<void> _requestPermissions() async {
    try {
      print("开始请求麦克风权限");
      
      // 直接使用 Permission handler 检查麦克风权限
      var status = await Permission.microphone.status;
      print("当前麦克风权限状态: $status");
      
      if (!status.isGranted) {
        // 显式请求麦克风权限
        status = await Permission.microphone.request();
        print("请求后麦克风权限状态: $status");
        
        if (!status.isGranted) {
          print("用户拒绝了麦克风权限");
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Unable to access microphone, please allow access in settings")),
            );
          }
          return;
        }
      }
      
      // 重置音频服务状态 - 这一步是关键
      try {
        print("初始化音频状态为可用");
        
        // iOS平台额外检查
        if (Platform.isIOS) {
          print("iOS平台，初始化音频会话");
          final session = await AudioSession.instance;
          
          // 先停用当前会话
          await session.setActive(false);
          await Future.delayed(const Duration(milliseconds: 300));
          
          // 配置新的会话
          await session.configure(AudioSessionConfiguration(
            avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
            avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth |
                                            AVAudioSessionCategoryOptions.defaultToSpeaker,
            avAudioSessionMode: AVAudioSessionMode.defaultMode,
            avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
            avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
          ));
          
          // 激活会话
          final result = await session.setActive(true);
          print("iOS音频会话初始化结果: $result");
          
          if (!result) {
            print("iOS音频会话激活失败，尝试再次激活");
            await Future.delayed(const Duration(milliseconds: 300));
            final secondAttempt = await session.setActive(true);
            print("iOS音频会话再次激活结果: $secondAttempt");
          }
        }
        
        // 重新初始化音频服务 - 确保播放器实例是新的
        await _audioService.reinitialize();
        print("音频服务已重新初始化");
      } catch (e) {
        print("初始化音频状态时错误: $e");
      }
      
      // 确保应用文档目录是可写的
      try {
        final appDir = await getApplicationDocumentsDirectory();
        final recordingDir = Directory('${appDir.path}/chat_media');
        if (!await recordingDir.exists()) {
          await recordingDir.create(recursive: true);
        }
        
        final testFile = File('${recordingDir.path}/permission_test.txt');
        await testFile.writeAsString('test');
        await testFile.delete();
        print("应用文档目录写入权限正常");
      } catch (e) {
        print("应用文档目录写入权限异常: $e");
        // 尝试使用临时目录
        try {
          final tempDir = await getTemporaryDirectory();
          final recordingDir = Directory('${tempDir.path}/chat_media');
          if (!await recordingDir.exists()) {
            await recordingDir.create(recursive: true);
          }
          
          final testFile = File('${recordingDir.path}/permission_test.txt');
          await testFile.writeAsString('test');
          await testFile.delete();
          print("临时目录写入权限正常，将使用临时目录");
        } catch (e2) {
          print("临时目录也无法写入: $e2");
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Cannot write to app storage, recording may not work")),
            );
          }
        }
      }
    } catch (e) {
      print("请求权限时出错: $e");
    }
  }
  
  // 加载历史聊天消息
  Future<void> _loadChatMessages() async {
    try {
      final userId = widget.user.userId;
      final savedMessages = await ChatStorageService.loadMessages(userId);
      
      if (mounted) {
        setState(() {
          _messages.clear();
          _messages.addAll(savedMessages);
          _isLoading = false;
        });
      }
    } catch (e) {
      print("Error loading chat messages: $e");
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  
  // 保存消息到本地存储
  Future<void> _saveChatMessages() async {
    try {
      final userId = widget.user.userId;
      await ChatStorageService.saveMessages(_messages, userId);
    } catch (e) {
      print("Error saving chat messages: $e");
    }
  }
  
  @override
  void dispose() {
    _isDisposed = true;
    
    // 释放资源但不销毁单例服务
    _messageController.dispose();
    _recordingTimer?.cancel();
    
    // 停止动画但保留音频服务状态
    _playbackAnimationController.stop();
    _recordingAnimationController.stop();
    
    // 停止当前播放和录音，但不销毁音频服务
    if (_isRecording) {
      _audioService.stopRecording();
    }
    if (_playingVoiceMessageId != null) {
      _audioService.stopPlaying();
    }
    
    // 释放动画控制器
    _playbackAnimationController.dispose();
    _recordingAnimationController.dispose();
    
    // 移除生命周期观察者
    WidgetsBinding.instance.removeObserver(_lifecycleObserver);
    
    // 但不销毁AudioService实例
    print("ChatPage已释放资源，但保留AudioService实例供下次使用");
    
    super.dispose();
  }
  
  @override
  void deactivate() {
    // 页面失活时只暂停活动，不销毁资源
    if (!_isDisposed) {
      if (_playingVoiceMessageId != null) {
        _audioService.stopPlaying();
      }
      if (_isRecording) {
        _audioService.stopRecording();
      }
      
      // 停止动画
      _playbackAnimationController.stop();
      _recordingAnimationController.stop();
      _recordingTimer?.cancel();
    }
    
    super.deactivate();
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 检查页面是否仍然显示
    final route = ModalRoute.of(context);
    if (route != null && !route.isCurrent) {
      // 如果页面不再是当前页面，仅暂停活动
      if (_playingVoiceMessageId != null) {
        _audioService.stopPlaying();
      }
      if (_isRecording) {
        _audioService.stopRecording();
      }
    } else {
      // 如果页面是当前页面，刷新用户资料和额度
      _loadUserProfile();
      _loadCreditBalances();
    }
  }
  
  // 检查并减少文本消息额度
  Future<bool> _checkAndDeductTextCredit() async {
    // 现在所有功能都是免费的，总是返回true
    return true;
  }
  
  // 检查并减少图片消息额度
  Future<bool> _checkAndDeductPictureCredit() async {
    // 现在所有功能都是免费的，总是返回true
    return true;
  }
  
  // 检查并减少语音消息额度
  Future<bool> _checkAndDeductVoiceCredit() async {
    // 现在所有功能都是免费的，总是返回true
    return true;
  }
  
  // 检查并减少视频通话额度
  Future<bool> _checkAndDeductVideoCredit() async {
    // 现在所有功能都是免费的，总是返回true
    return true;
  }
  
  // 显示额度不足提示并跳转到充值页面
  void _showCreditAlert(String creditType) {
    // 不再显示需要购买信用的提示，而是显示功能已免费
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text(
          "Free Service",
          style: TextStyle(color: Color(0xFF5E60CE)),
        ),
        content: Text(
          "All messaging and calling features are now free to use without any limitations.",
          style: TextStyle(color: Colors.grey[700]),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(color: Color(0xFF5E60CE)),
            ),
          ),
        ],
      ),
    );
  }
  
  // 跳转到充值页面
  void _navigateToInAppPurchases(String creditType) {
    // 现在所有功能都是免费的，不需要跳转到充值页面
  }
  
  // 修改发送文本消息方法
  void _sendTextMessage() async {
    if (_messageController.text.trim().isEmpty) return;
    
    // 检查额度
    final hasCredit = await _checkAndDeductTextCredit();
    if (!hasCredit) return;
    
    setState(() {
      _messages.add(
        ChatMessage(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          content: _messageController.text,
          type: ChatMessageType.text,
          isMe: true,
          timestamp: DateTime.now(),
        ),
      );
    });
    
    _messageController.clear();
    
    // 保存消息到本地存储
    _saveChatMessages();
  }
  
  // 修改开始录音方法
  Future<void> _startRecording() async {
    print("开始录音 - 手势按下");
    
    // 确保音频权限
    try {
      final status = await Permission.microphone.request();
      print("麦克风权限状态: $status");
      if (status != PermissionStatus.granted) {
        print("麦克风权限未授予");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Unable to access microphone, please allow access in settings")),
          );
        }
        return;
      }
    } catch (e) {
      print("检查麦克风权限出错: $e");
    }
    
    // 如果已经在录音，先停止当前录音并重置状态
    if (_isRecording) {
      print("检测到已有录音在进行，先停止并重置状态");
      _recordingAnimationController.stop();
      _recordingTimer?.cancel();
      await _audioService.stopRecording();
      
      if (mounted) {
        Future.microtask(() {
          if (mounted) {
            setState(() {
              _isRecording = false;
              _isLongPressActive = false;
            });
          }
        });
      }
      
      // 给系统一点时间来释放麦克风资源
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    if (_isDisposed) return;
    
    try {
      if (mounted) {
        Future.microtask(() {
          if (mounted) {
            setState(() {
              _isLongPressActive = true;
              _isRecording = true;
              _recordingDy = 0.0; // 重置垂直偏移量
              _recordingDuration = 0;
              _isRecordingOptionVisible = false; // 关闭录音选项弹窗
            });
          }
        });
      }
    } catch (e) {
      print("Error updating state at recording start: $e");
      return;
    }
    
    // 开始录音动画
    _recordingAnimationController.reset();
    _recordingAnimationController.repeat(reverse: true);
    
    // 开始波形动画
    _startWaveAnimation();
    
    // 停止任何正在播放的语音消息
    if (_playingVoiceMessageId != null) {
      print("停止当前语音播放以开始录音");
      await _audioService.stopPlaying();
      
      if (mounted) {
        Future.microtask(() {
          if (mounted) {
            setState(() {
              _playingVoiceMessageId = null;
            });
            _playbackAnimationController.reset();
          }
        });
      }
      
      // 给系统一点时间来释放音频资源
      await Future.delayed(const Duration(milliseconds: 300));
    }
    
    // 开始录音
    print("调用服务开始录音");
    _currentRecordingPath = await _audioService.startRecording();
    
    if (_currentRecordingPath == null) {
      print("录音启动失败，路径为空");
      // 检查录音服务是否正常
      final isRecording = _audioService.isRecording;
      print("服务录音状态: $isRecording");
      
      if (mounted) {
        Future.microtask(() {
          if (mounted) {
            setState(() {
              _isRecording = false;
              _isLongPressActive = false;
            });
            _recordingAnimationController.stop();
            _recordingTimer?.cancel();
            
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Failed to start recording, please try again")),
            );
          }
        });
      }
      
      // 尝试重新初始化音频服务
      try {
        await _audioService.reinitialize();
        print("尝试重新初始化音频服务");
      } catch (e) {
        print("重新初始化音频服务失败: $e");
      }
      
      return;
    }
    
    print("录音已开始，路径: $_currentRecordingPath");
    
    // 开始计时
    _recordingTimer?.cancel(); // 确保之前的计时器已取消
    _recordingTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (mounted && !_isDisposed) {
        setState(() {
          _recordingDuration += 100;
          
          // 随机更新波形高度
          for (int i = 0; i < _waveHeights.length; i++) {
            _waveHeights[i] = _random.nextDouble() * 20;
          }
        });
      }
    });
  }
  
  // 开始波形动画
  void _startWaveAnimation() {
    // 不再需要单独的计时器来更新波形和时长
    // 波形更新已经在_startRecording的计时器中处理
  }
  
  // 处理录音结束（包括正常结束和取消）
  Future<void> _handleRecordingEnd(bool shouldCancel) async {
    print("结束录音 - 手势抬起，取消: $shouldCancel");
    
    // 如果没有正在进行的录音，直接返回
    if (!_isRecording || !_isLongPressActive) {
      print("没有正在进行的录音，无需处理结束事件");
      return;
    }
    
    if (_isDisposed) return;
    
    // 先记录当前录音路径以防状态更新后丢失
    final recordingPath = _currentRecordingPath;
    print("准备结束录音，当前路径: $recordingPath");
    
    // 使用 microtask 确保在正确的时机更新状态
    if (mounted && !_isDisposed) {
      Future.microtask(() {
        if (mounted) {
          setState(() {
            _isLongPressActive = false;
            _isRecording = false;
            _recordingDy = 0.0;
          });
        }
      });
    }
    
    // 停止录音动画
    _recordingAnimationController.stop();
    
    // 取消录音计时器
    _recordingTimer?.cancel();
    _recordingTimer = null;
    
    // 确保录音被停止
    try {
      // 如果是上滑取消，则取消录音
      if (shouldCancel) {
        print("取消录音 - 用户选择取消");
        await _audioService.stopRecording();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording cancelled")),
          );
        }
        return;
      }
      
      // 先检查是否真的有录音可以停止
      if (recordingPath == null) {
        print("录音路径为空，无法处理结束");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording failed to start properly, please try again")),
          );
        }
        return;
      }
      
      // 停止录音
      print("停止录音并保存 - 正常结束");
      final audioPath = await _audioService.stopRecording();
      print("录音已停止，返回路径: $audioPath");
      
      if (audioPath != null && !_isDisposed && mounted) {
        // 录音成功，添加到消息列表
        final duration = await _audioService.getAudioDuration(audioPath);
        print("录音时长: $duration 毫秒");
        
        // 只有录音时间超过500毫秒才添加消息
        if (duration > 500) {
          // 发送语音消息
          await _sendVoiceMessage(audioPath, duration.toInt());
          print("语音消息已添加到聊天列表");
        } else if (mounted) {
          print("录音时间太短");
          Future.microtask(() {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Recording time too short, please try again")),
              );
            }
          });
        }
      } else {
        print("无法获取有效的录音文件");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording file missing, cannot send")),
          );
        }
      }
    } catch (e) {
      print("处理录音结束时出错: $e");
      if (mounted) {
        Future.microtask(() {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Failed to send voice message: $e")),
            );
          }
        });
      }
    }
  }
  
  // 播放语音消息
  Future<void> _playVoiceMessage(ChatMessage message) async {
    if (message.voicePath == null || _isDisposed) {
      print("无法播放语音消息：路径为空或组件已销毁");
      return;
    }
    
    print("尝试播放语音消息，ID: ${message.id}, 路径: ${message.voicePath}");
    
    try {
      // 检查文件是否存在
      final audioFile = File(message.voicePath!);
      final exists = await audioFile.exists();
      print("文件存在检查: $exists - 路径: ${message.voicePath}");
      
      if (!exists) {
        print("语音文件不存在: ${message.voicePath}");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Voice file does not exist, trying to find alternative...")),
          );
        }
      }
      
      // 确保停止任何正在进行的录音
      if (_isRecording) {
        print("停止当前录音以开始播放");
        await _audioService.stopRecording();
        if (mounted) {
          setState(() {
            _isRecording = false;
            _isLongPressActive = false;
          });
          
          // 给系统一点时间来释放麦克风资源
          await Future.delayed(const Duration(milliseconds: 500));
        }
      }
      
      // 处理当前播放状态
      if (_playingVoiceMessageId == message.id) {
        // 停止播放当前语音
        print("停止当前正在播放的语音消息");
        await _audioService.stopPlaying();
        
        if (mounted && !_isDisposed) {
          setState(() {
            _playingVoiceMessageId = null;
          });
          _playbackAnimationController.reset();
        }
        return;
      }
      
      // 开始播放新的语音
      if (mounted && !_isDisposed) {
        setState(() {
          _playingVoiceMessageId = message.id;
        });
        
        // 重置并开始播放动画
        _playbackAnimationController.reset();
        _playbackAnimationController.forward();
      }
      
      // 打印调试信息
      print("开始播放语音消息: ${message.id}, 文件路径: ${message.voicePath}");
      
      // 尝试播放，提供回调函数
      await _audioService.playVoiceMessage(
        message.voicePath!,
        onComplete: () {
          print("语音播放完成");
          if (mounted && !_isDisposed) {
            setState(() {
              _playingVoiceMessageId = null;
            });
          }
        },
        onError: (error) {
          print("播放出错: $error");
          if (mounted && !_isDisposed) {
            setState(() {
              _playingVoiceMessageId = null;
            });
            _playbackAnimationController.reset();
            
            // 显示错误消息
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Failed to play voice message: $error")),
            );
          }
        },
      );
    } catch (e) {
      print("播放语音消息总体错误: $e");
      if (mounted && !_isDisposed) {
        setState(() {
          _playingVoiceMessageId = null;
        });
        _playbackAnimationController.reset();
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error playing voice message: $e")),
        );
      }
    }
  }
  
  // 发送图片消息
  Future<void> _sendImageMessage(File imageFile) async {
    if (_isDisposed) return;
    
    try {
      // 保存图片到应用文档目录
      final savedImagePath = await ChatStorageService.saveMediaFile(
        imageFile, 
        ChatMessageType.image
      );
      
      if (savedImagePath == null) {
        print("Failed to save image file");
        return;
      }
      
      if (mounted) {
        setState(() {
          _messages.add(
            ChatMessage(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              content: "Image",
              type: ChatMessageType.image,
              isMe: true,
              timestamp: DateTime.now(),
              imagePath: savedImagePath,
            ),
          );
        });
        
        // 保存消息到本地存储
        _saveChatMessages();
      }
    } catch (e) {
      print("Error sending image message: $e");
    }
  }
  
  // 发送语音消息
  Future<void> _sendVoiceMessage(String voiceFilePath, int durationMs) async {
    if (_isDisposed) return;
    
    try {
      // 检查额度
      final hasCredit = await _checkAndDeductVoiceCredit();
      if (!hasCredit) return;
      
      print("准备保存并发送语音消息，源文件路径: $voiceFilePath");
      
      // 检查源文件是否存在
      final sourceFile = File(voiceFilePath);
      if (!await sourceFile.exists()) {
        print("语音文件不存在: $voiceFilePath");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording file missing, cannot send")),
          );
        }
        return;
      }
      
      // 检查文件大小
      final fileSize = await sourceFile.length();
      print("语音文件大小: $fileSize 字节");
      if (fileSize <= 0) {
        print("语音文件为空: $voiceFilePath");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording file is empty, cannot send")),
          );
        }
        return;
      }
      
      // 保存语音文件到应用文档目录
      final savedVoicePath = await ChatStorageService.saveMediaFile(
        sourceFile, 
        ChatMessageType.voice
      );
      
      if (savedVoicePath == null) {
        print("保存语音文件失败");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Failed to save recording, please try again")),
          );
        }
        return;
      }
      
      // 验证保存的文件是否可访问
      final savedFile = File(savedVoicePath);
      if (!await savedFile.exists()) {
        print("保存后的语音文件不存在: $savedVoicePath");
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recording lost after saving, please try again")),
          );
        }
        return;
      }
      
      print("语音文件已成功保存到: $savedVoicePath");
      
      if (mounted) {
        setState(() {
          _messages.add(
            ChatMessage(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              content: "Voice Message",
              type: ChatMessageType.voice,
              isMe: true,
              timestamp: DateTime.now(),
              duration: Duration(milliseconds: durationMs),
              voicePath: savedVoicePath,
            ),
          );
        });
        
        // 保存消息到本地存储
        _saveChatMessages();
        
        print("语音消息已添加到聊天记录，路径: $savedVoicePath");
      }
    } catch (e) {
      print("发送语音消息时出错: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to send voice message: $e")),
        );
      }
    }
  }
  
  Future<void> _pickAndSendImage() async {
    if (_isPickingImage || _isDisposed) return;
    
    // 检查额度
    final hasCredit = await _checkAndDeductPictureCredit();
    if (!hasCredit) return;
    
    setState(() {
      _isPickingImage = true;
    });
    
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
      );
      
      if (pickedFile != null) {
        final imageFile = File(pickedFile.path);
        await _sendImageMessage(imageFile);
      }
    } catch (e) {
      print("Error picking image: $e");
    } finally {
      if (mounted) {
        setState(() {
          _isPickingImage = false;
        });
      }
    }
  }
  
  void _startVideoCall() async {
    // 检查额度
    final hasCredit = await _checkAndDeductVideoCredit();
    if (!hasCredit) return;
    
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => VideoCallPage(
          recipientName: widget.user.name,
          recipientImageUrl: widget.user.icon,
        ),
      ),
    );
  }
  
  // 显示录音选项
  void _toggleRecordingOption() {
    if (_isDisposed) return;
    
    try {
      setState(() {
        _isRecordingOptionVisible = !_isRecordingOptionVisible;
      });
    } catch (e) {
      print("Error toggling recording option: $e");
    }
  }
  
  // 返回按钮点击处理
  void _handleBackButton() {
    // 仅暂停活动，不销毁资源
    if (_isRecording) {
      _audioService.stopRecording();
    }
    if (_playingVoiceMessageId != null) {
      _audioService.stopPlaying();
    }
    
    // 停止动画
    _playbackAnimationController.stop();
    _recordingAnimationController.stop();
    _recordingTimer?.cancel();
    
    // 使用Future.microtask确保状态更新在导航前完成
    if (mounted) {
      Future.microtask(() {
        // 安全地退出页面
        if (mounted && !_isDisposed) {
          Navigator.of(context).pop();
        }
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: kToolbarHeight + 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: _getUserImageProvider(),
            ),
            const SizedBox(width: 12),
            Text(
              widget.user.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam, color: AppColors.primaryYellow),
            onPressed: _startVideoCall,
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: _handleBackButton,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // Chat messages list
              Expanded(
                child: _messages.isEmpty
                    ? _buildEmptyChat()
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        itemCount: _messages.length,
                        reverse: true,
                        itemBuilder: (context, index) {
                          final message = _messages[_messages.length - 1 - index];
                          return _buildMessageItem(message);
                        },
                      ),
              ),
              
              // Input bar
              _buildInputBar(),
            ],
          ),
          
          // 录音状态提示
          if (_isRecording) _buildRecordingOverlay(),
          
          // 录音选项弹窗
          if (_isRecordingOptionVisible) _buildRecordingOptionOverlay(),
        ],
      ),
    );
  }
  
  Widget _buildEmptyChat() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 64,
            color: Colors.white.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text(
            "Start chatting with ${widget.user.name}",
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Logged in as $_userProfileName",
            style: TextStyle(
              color: Colors.white.withOpacity(0.3),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildMessageItem(ChatMessage message) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!message.isMe) ...[
            CircleAvatar(
              radius: 16,
              backgroundImage: _getUserImageProvider(),
            ),
            const SizedBox(width: 8),
          ],
          
          Flexible(
            child: Container(
              padding: message.type == ChatMessageType.image 
                  ? const EdgeInsets.all(4)
                  : const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: message.isMe 
                    ? AppColors.primaryYellow 
                    : Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: _buildMessageContent(message),
            ),
          ),
          
          if (message.isMe) ...[
            const SizedBox(width: 8),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.blue,
              backgroundImage: _getUserProfileImageProvider(),
            ),
          ],
        ],
      ),
    );
  }
  
  Widget _buildMessageContent(ChatMessage message) {
    switch (message.type) {
      case ChatMessageType.text:
        return Text(
          message.content,
          style: TextStyle(
            color: message.isMe ? Colors.black : Colors.white,
            fontSize: 14,
          ),
        );
        
      case ChatMessageType.voice:
        final bool isPlaying = _playingVoiceMessageId == message.id;
        return GestureDetector(
          onTap: () => _playVoiceMessage(message),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
              minWidth: 100,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 播放/暂停按钮
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: isPlaying 
                        ? (message.isMe ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.3))
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: isPlaying
                      ? AnimatedBuilder(
                          animation: _playbackAnimationController,
                          builder: (context, child) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.pause,
                                  color: message.isMe ? Colors.black : Colors.white,
                                  size: 20,
                                ),
                                // 波纹效果 - 完全重写波纹效果的实现
                                if (isPlaying) ...[
                                  ...List.generate(3, (index) {
                                    final animationValue = _playbackAnimationController.value;
                                    // 计算每个波纹的不同动画值，使它们交错出现
                                    final waveValue = (animationValue - (index * 0.2)).clamp(0.0, 1.0);
                                    // 只有当波纹值大于0时才显示
                                    if (waveValue <= 0) return const SizedBox.shrink();
                                    
                                    return Opacity(
                                      opacity: (1.0 - waveValue).clamp(0.0, 0.7),
                                      child: Transform.scale(
                                        scale: 1.0 + (waveValue * 0.5),
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: message.isMe 
                                                  ? Colors.black.withOpacity(0.3 - (index * 0.1))
                                                  : Colors.white.withOpacity(0.3 - (index * 0.1)),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ],
                            );
                          },
                        )
                      : Icon(
                          Icons.play_arrow,
                          color: message.isMe ? Colors.black : Colors.white,
                          size: 24,
                        ),
                ),
                
                const SizedBox(width: 8),
                
                // 音频波形和时长
                Flexible(
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: message.isMe ? Colors.black.withOpacity(0.1) : Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        // 播放进度指示器 - 修改进度条动画
                        if (isPlaying)
                          AnimatedBuilder(
                            animation: _playbackAnimationController,
                            builder: (context, child) {
                              // 计算当前进度，确保不会超出总时长
                              final double progress = message.duration != null
                                  ? (_playbackAnimationController.value * 
                                      (30000 / message.duration!.inMilliseconds)).clamp(0.0, 1.0)
                                  : _playbackAnimationController.value;
                                  
                              return Container(
                                width: (MediaQuery.of(context).size.width * 0.6 - 44) * progress,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  gradient: LinearGradient(
                                    colors: message.isMe 
                                        ? [Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.05)]
                                        : [Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.1)],
                                  ),
                                ),
                              );
                            },
                          ),
                        
                        // 音频波形图
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // 波形图 - 添加动态波形效果
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    8,
                                    (index) {
                                      // 如果正在播放，添加动态高度
                                      double height = 5.0 + (index % 3) * 5.0;
                                      if (isPlaying) {
                                        // 使用动画控制器值和索引创建交错的波形效果
                                        final animValue = (_playbackAnimationController.value * 10 + index) % 1.0;
                                        height += math.sin(animValue * math.pi) * 3.0;
                                      }
                                      
                                      return Container(
                                        width: 3,
                                        height: height,
                                        decoration: BoxDecoration(
                                          color: message.isMe 
                                              ? Colors.black.withOpacity(0.5) 
                                              : Colors.white.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(1.5),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              
                              const SizedBox(width: 8),
                              
                              // 时长
                              Text(
                                "${(message.duration?.inSeconds ?? 0)}s",
                                style: TextStyle(
                                  color: message.isMe ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
        
      case ChatMessageType.image:
        if (message.imagePath != null) {
          return GestureDetector(
            onTap: () => _showImagePreview(message.imagePath!),
            child: Hero(
              tag: message.imagePath!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(
                  File(message.imagePath!),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    print("Image error: $error");
                    return _buildImageError(error.toString());
                  },
                ),
              ),
            ),
          );
        } else {
          return _buildImagePlaceholder();
        }
    }
  }
  
  void _showImagePreview(String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImagePreviewPage(imagePath: imagePath),
      ),
    );
  }
  
  Widget _buildImageWidget(String path) {
    try {
      return GestureDetector(
        onTap: () => _showImagePreview(path),
        child: Hero(
          tag: path,
          child: Image.file(
            File(path),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              print("Image error: $error");
              return _buildImageError(error.toString());
            },
          ),
        ),
      );
    } catch (e) {
      print("Error creating image widget: $e");
      return _buildImageError(e.toString());
    }
  }
  
  Widget _buildImageError(String error) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            "Image error",
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
  
  Widget _buildImagePlaceholder() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Icon(
          Icons.image,
          color: Colors.white70,
          size: 32,
        ),
      ),
    );
  }
  
  // 在输入栏构建录音按钮
  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[900],
      child: Row(
        children: [
          // Voice button - 直接在这里处理录音功能
          GestureDetector(
            onLongPress: () {
              print("长按开始录音");
              _startRecording();
            },
            onLongPressEnd: (_) {
              print("长按结束，停止录音");
              _handleRecordingEnd(false);
            },
            onLongPressCancel: () {
              print("长按取消");
              if (_isRecording) {
                _handleRecordingEnd(true);
              }
            },
            onTap: () {
              // 短按只显示提示
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Press and hold to record voice message")),
              );
            },
            child: AnimatedBuilder(
              animation: _recordingAnimation,
              builder: (context, child) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _isRecording ? Colors.red : Colors.transparent,
                    shape: BoxShape.circle,
                    boxShadow: _isRecording 
                        ? [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.5),
                              blurRadius: _recordingAnimation.value * 8,
                              spreadRadius: _recordingAnimation.value * 2,
                            )
                          ] 
                        : null,
                  ),
                  child: Icon(
                    _isRecording ? Icons.mic : Icons.mic_none,
                    color: _isRecording ? Colors.white : Colors.white,
                    size: 30,
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(width: 8),
          
          // Message input field
          Expanded(
            child: TextField(
              controller: _messageController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: _isRecording ? "Recording..." : "Type a message...",
                hintStyle: TextStyle(color: _isRecording ? Colors.red : Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          
          const SizedBox(width: 8),
          
          // Image button
          GestureDetector(
            onTap: _pickAndSendImage,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: _isPickingImage
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 24,
                  ),
            ),
          ),
          
          const SizedBox(width: 16),
          
          // Send button
          GestureDetector(
            onTap: _sendTextMessage,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: AppColors.primaryYellow,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.send,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // 构建录音状态提示层
  Widget _buildRecordingOverlay() {
    final bool showCancelHint = _recordingDy < -20; // 上滑超过20像素显示取消提示
    final String durationText = _formatDuration(_recordingDuration);
    
    return Positioned.fill(
      child: Container(
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(16),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedBuilder(
                        animation: _recordingAnimation,
                        builder: (context, child) {
                          return Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: showCancelHint ? Colors.red : AppColors.primaryYellow,
                              boxShadow: [
                                BoxShadow(
                                  color: (showCancelHint ? Colors.red : AppColors.primaryYellow).withOpacity(0.5),
                                  blurRadius: _recordingAnimation.value * 10,
                                  spreadRadius: _recordingAnimation.value * 2,
                                )
                              ],
                            ),
                            child: Icon(
                              showCancelHint ? Icons.close : Icons.mic,
                              color: Colors.white,
                              size: 32,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      // 波形动画
                      if (!showCancelHint) _buildWaveform(),
                      const SizedBox(height: 8),
                      // 录音时长
                      Text(
                        durationText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        showCancelHint ? "Slide up to cancel" : "Press and hold to record",
                        style: TextStyle(
                          color: showCancelHint ? Colors.red : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (!showCancelHint) ...[
                        const SizedBox(height: 8),
                        const Text(
                          "Slide up to cancel",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 构建波形图
  Widget _buildWaveform() {
    return Container(
      width: 150,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(_waveHeights.length, (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            width: 4,
            height: _waveHeights[index],
            decoration: BoxDecoration(
              color: AppColors.primaryYellow,
              borderRadius: BorderRadius.circular(2),
            ),
          );
        }),
      ),
    );
  }
  
  // 格式化时长
  String _formatDuration(int milliseconds) {
    // 确保毫秒数是非负的
    final int positiveMilliseconds = milliseconds < 0 ? 0 : milliseconds;
    
    // 计算分钟和秒数
    final int seconds = (positiveMilliseconds / 1000).floor();
    final int minutes = (seconds / 60).floor();
    final int remainingSeconds = seconds % 60;
    
    // 格式化为 MM:SS
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  
  ImageProvider _getUserImageProvider() {
    if (widget.user.icon.startsWith('assets/')) {
      return AssetImage(widget.user.icon);
    }
    
    // 使用assets/images/user目录下的默认头像替代缺失的user_avatar.png
    return const AssetImage('assets/images/user/1/icon_1.jpg');
  }
  
  // 获取当前用户头像
  ImageProvider _getUserProfileImageProvider() {
    if (_userProfileImage != null) {
      // 确保文件存在
      final file = File(_userProfileImage!);
      if (file.existsSync()) {
        return FileImage(file);
      }
    }
    
    // 默认头像
    return const AssetImage('assets/images/user/1/icon_1.jpg');
  }
  
  // 构建录音选项弹窗
  Widget _buildRecordingOptionOverlay() {
    return Positioned(
      bottom: 80,
      left: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isRecordingOptionVisible = false;
          });
        },
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Voice Message",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // 录音按钮 - 使用GestureDetector
                  GestureDetector(
                    onTapDown: (_) {
                      print("按下开始录音");
                      _startRecording();
                    },
                    onTapUp: (_) {
                      print("抬起结束录音 - 正常结束");
                      _handleRecordingEnd(false);
                    },
                    onTapCancel: () {
                      print("录音手势取消");
                      _handleRecordingEnd(true);
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: _isRecording ? Colors.red : AppColors.primaryYellow,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: (_isRecording ? Colors.red : AppColors.primaryYellow).withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(
                        _isRecording ? Icons.mic : Icons.mic_none,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Tap and hold to record",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Release to stop",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Message type enum
enum ChatMessageType {
  text,
  voice,
  image,
}

// Message structure class
class ChatMessage {
  final String id;
  final String content;
  final ChatMessageType type;
  final bool isMe;
  final DateTime timestamp;
  final Duration? duration; // For voice messages
  final String? imagePath;  // For image messages
  final String? voicePath;  // For voice messages
  
  ChatMessage({
    required this.id,
    required this.content,
    required this.type,
    required this.isMe,
    required this.timestamp,
    this.duration,
    this.imagePath,
    this.voicePath,
  });
}

// 图片预览页面
class ImagePreviewPage extends StatefulWidget {
  final String imagePath;
  
  const ImagePreviewPage({
    required this.imagePath,
    Key? key,
  }) : super(key: key);
  
  @override
  State<ImagePreviewPage> createState() => _ImagePreviewPageState();
}

class _ImagePreviewPageState extends State<ImagePreviewPage> with SingleTickerProviderStateMixin {
  late TransformationController _transformationController;
  TapDownDetails? _doubleTapDetails;
  bool _isDisposed = false;
  
  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
  }
  
  @override
  void dispose() {
    _isDisposed = true;
    _transformationController.dispose();
    super.dispose();
  }
  
  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }
  
  void _handleDoubleTap() {
    if (_isDisposed) return;
    
    try {
      if (_transformationController.value != Matrix4.identity()) {
        // 如果已经放大，则重置回原始大小
        _transformationController.value = Matrix4.identity();
      } else {
        // 否则放大到2倍
        if (_doubleTapDetails == null) return;
        
        final position = _doubleTapDetails!.localPosition;
        // 放大2倍并将点击位置居中
        final zoomed = Matrix4.identity()
          ..translate(-position.dx, -position.dy)
          ..scale(2.0)
          ..translate(position.dx, position.dy);
        _transformationController.value = zoomed;
      }
    } catch (e) {
      print("Error during image zoom operation: $e");
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTapDown: _handleDoubleTapDown,
          onDoubleTap: _handleDoubleTap,
          child: InteractiveViewer(
            transformationController: _transformationController,
            minScale: 0.5,
            maxScale: 4.0,
            child: Hero(
              tag: widget.imagePath,
              child: Image.file(
                File(widget.imagePath),
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  print("Error loading image in preview: $error");
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Error loading image: $error",
                        style: const TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 应用生命周期观察者
class _AppLifecycleObserver extends WidgetsBindingObserver {
  final VoidCallback onResumed;
  
  _AppLifecycleObserver({required this.onResumed});
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      onResumed();
    }
  }
} 