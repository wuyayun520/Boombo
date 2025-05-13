import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:developer' as developer;
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:audio_session/audio_session.dart';
import 'dart:io';

/// 背景音乐服务
/// 管理应用中的背景音乐播放
class BackgroundMusicService {
  // 单例模式
  static final BackgroundMusicService _instance = BackgroundMusicService._internal();
  factory BackgroundMusicService() => _instance;
  BackgroundMusicService._internal() {
    _init();
  }
  
  // 音频播放器
  AudioPlayer _audioPlayer = AudioPlayer();
  
  // 当前播放的音乐路径
  String? _currentMusic;
  
  // 是否正在播放
  bool _isPlaying = false;
  
  // 是否已销毁
  bool _isDisposed = false;
  
  // 是否初始化完成
  bool _isInitialized = false;
  
  // Getters
  bool get isPlaying => _isPlaying;
  
  // 当前播放的音乐
  String? get currentMusic => _currentMusic;
  
  // 初始化服务
  Future<void> _init() async {
    if (_isInitialized) {
      print('背景音乐服务已初始化，跳过');
      return;
    }
    
    try {
      print('初始化背景音乐服务');
      
      // 配置音频会话
      final session = await AudioSession.instance;
      await session.configure(AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playback,
        avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.mixWithOthers,
        avAudioSessionMode: AVAudioSessionMode.defaultMode,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.music,
          usage: AndroidAudioUsage.media,
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      ));
      
      // 设置基本配置
      await _audioPlayer.setVolume(0.8);
      await _audioPlayer.setLoopMode(LoopMode.one); // 默认循环播放
      
      // 添加音频播放器状态监听
      _audioPlayer.playerStateStream.listen((state) {
        print('背景音乐播放器状态: ${state.processingState}, 是否播放: ${state.playing}');
        _isPlaying = state.playing;
      });
      
      _isInitialized = true;
      print('背景音乐服务初始化完成');
    } catch (e) {
      print('初始化背景音乐服务失败: $e');
      _isInitialized = false;
    }
  }
  
  // 播放音乐
  Future<void> playMusic(String assetPath, {bool loop = true}) async {
    if (_audioPlayer == null) {
      await _init();
    }
    
    try {
      // 如果已经在播放相同的音乐，不做任何操作
      if (_isPlaying && _currentMusic == assetPath) {
        return;
      }
      
      // 如果在播放其他音乐，先停止
      if (_isPlaying) {
        await stopMusic();
      }
      
      // 设置音乐源
      await _audioPlayer.setAsset(assetPath);
      
      // 设置循环模式
      await _audioPlayer.setLoopMode(loop ? LoopMode.all : LoopMode.off);
      
      // 播放
      await _audioPlayer.play();
      
      _isPlaying = true;
      _currentMusic = assetPath;
      
      developer.log('开始播放背景音乐: $assetPath');
    } catch (e) {
      developer.log('播放背景音乐失败: $e');
    }
  }
  
  // 暂停音乐
  Future<void> pauseMusic() async {
    if (_audioPlayer != null && _isPlaying) {
      try {
        await _audioPlayer.pause();
        _isPlaying = false;
        developer.log('背景音乐已暂停');
      } catch (e) {
        developer.log('暂停背景音乐失败: $e');
      }
    }
  }
  
  // 恢复播放
  Future<void> resumeMusic() async {
    if (_audioPlayer != null && !_isPlaying && _currentMusic != null) {
      try {
        await _audioPlayer.play();
        _isPlaying = true;
        developer.log('背景音乐已恢复播放');
      } catch (e) {
        developer.log('恢复播放背景音乐失败: $e');
      }
    }
  }
  
  // 停止音乐
  Future<void> stopMusic() async {
    if (_audioPlayer != null) {
      try {
        await _audioPlayer.stop();
        _isPlaying = false;
        _currentMusic = null;
        developer.log('背景音乐已停止');
      } catch (e) {
        developer.log('停止背景音乐失败: $e');
      }
    }
  }
  
  // 设置音量
  Future<void> setVolume(double volume) async {
    if (_audioPlayer != null) {
      try {
        await _audioPlayer.setVolume(volume.clamp(0.0, 1.0));
        developer.log('背景音乐音量已设置为: $volume');
      } catch (e) {
        developer.log('设置背景音乐音量失败: $e');
      }
    }
  }
  
  // 播放呼叫铃声
  Future<void> playCallRingtone() async {
    if (_isDisposed) return;
    
    try {
      print('开始播放呼叫铃声');
      
      // 如果已经在播放，先停止
      if (_isPlaying) {
        await stopPlaying();
      }
      
      // 配置iOS的音频会话
      if (Platform.isIOS) {
        final session = await AudioSession.instance;
        await session.configure(AudioSessionConfiguration(
          avAudioSessionCategory: AVAudioSessionCategory.playback,
          avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.mixWithOthers | 
                                         AVAudioSessionCategoryOptions.duckOthers,
          avAudioSessionMode: AVAudioSessionMode.defaultMode,
        ));
        await session.setActive(true);
      }
      
      // 播放内置铃声 - 使用已存在的音乐文件
      try {
        // 改用已有的音乐文件
        final callRingtoneAsset = 'assets/music/boom_music.mp3';
        await _audioPlayer.setAsset(callRingtoneAsset);
        
        // 使用Future不等待结果，避免阻塞UI线程
        _audioPlayer.play().then((_) {
          print('铃声开始播放');
          _isPlaying = true;
        });
        
      } catch (e) {
        print('加载铃声资源失败: $e');
        // 在这种情况下，通知用户铃声资源加载失败
      }
      
      print('呼叫铃声初始化完成');
    } catch (e) {
      print('播放呼叫铃声失败: $e');
    }
  }
  
  // 停止播放
  Future<void> stopPlaying() async {
    if (_isDisposed) return;
    
    try {
      print('尝试停止背景音乐播放');
      if (_isPlaying) {
        await _audioPlayer.stop();
        await _audioPlayer.seek(Duration.zero); // 重置播放位置
        
        // 确保音频播放器彻底重置
        _audioPlayer.processingStateStream.listen((state) {
          print('音频播放器状态: $state');
        });
        
        _isPlaying = false;
        _currentMusic = null;
        print('背景音乐已停止');
      } else {
        print('背景音乐当前未播放');
      }
    } catch (e) {
      print('停止背景音乐失败: $e');
      // 尝试额外的重置
      try {
        await _audioPlayer.dispose();
        _audioPlayer = AudioPlayer();
        _isPlaying = false;
        _currentMusic = null;
        print('音频播放器已重置');
      } catch (e2) {
        print('重置音频播放器失败: $e2');
      }
    }
  }
  
  // 处理来电
  Future<void> handleIncomingCall() async {
    await playCallRingtone();
  }
  
  // 处理去电
  Future<void> handleOutgoingCall() async {
    await playCallRingtone();
  }
  
  // 销毁资源
  Future<void> dispose() async {
    if (_isDisposed) return;
    
    try {
      await _audioPlayer.dispose();
      _isDisposed = true;
      _isPlaying = false;
      _currentMusic = null;
      print('背景音乐服务已销毁');
    } catch (e) {
      print('销毁背景音乐服务失败: $e');
    }
  }
  
  // 重新初始化音频服务
  Future<void> reinitialize() async {
    try {
      print('重新初始化音频服务');
      
      // 先停止并释放当前播放器
      await stopPlaying();
      
      // 完全处理掉旧的播放器
      try {
        await _audioPlayer.dispose();
      } catch (e) {
        print('释放旧播放器时出错: $e');
      }
      
      // 创建全新的播放器实例
      _audioPlayer = AudioPlayer();
      _isPlaying = false;
      _currentMusic = null;
      _isInitialized = false;
      
      // 重新初始化
      await _init();
      
      print('音频服务重新初始化完成');
    } catch (e) {
      print('重新初始化音频服务失败: $e');
    }
  }
} 