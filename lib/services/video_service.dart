import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';
import 'dart:developer' as developer;

/// 全局视频播放器管理服务
/// 确保同一时间只有一个视频在播放
class VideoService {
  // 单例模式
  static final VideoService _instance = VideoService._internal();
  factory VideoService() => _instance;
  VideoService._internal();
  
  // 当前活跃的视频播放器
  VideoPlayerController? _activeController;
  
  // 当前活跃的播放器ID
  String? _activePlayerId;
  
  // 活跃视频变化的监听器
  final List<Function(String? playerId)> _activePlayerChangedListeners = [];
  
  // 添加活跃视频变化监听
  void addActivePlayerChangedListener(Function(String? playerId) listener) {
    _activePlayerChangedListeners.add(listener);
  }
  
  // 移除活跃视频变化监听
  void removeActivePlayerChangedListener(Function(String? playerId) listener) {
    _activePlayerChangedListeners.remove(listener);
  }
  
  // 通知所有监听器活跃视频发生变化
  void _notifyActivePlayerChanged(String? playerId) {
    for (var listener in _activePlayerChangedListeners) {
      listener(playerId);
    }
  }
  
  // 设置活跃视频
  void setActivePlayer(String playerId, VideoPlayerController controller) {
    // 如果已经是活跃视频，不做任何操作
    if (_activePlayerId == playerId) {
      return;
    }
    
    // 先暂停当前活跃的视频播放器
    if (_activeController != null && _activeController!.value.isPlaying) {
      developer.log('暂停前一个活跃视频: $_activePlayerId');
      _activeController!.pause();
    }
    
    // 更新活跃视频播放器
    _activeController = controller;
    _activePlayerId = playerId;
    
    // 播放新的活跃视频
    if (controller.value.isInitialized) {
      developer.log('开始播放新的活跃视频: $playerId');
      controller.play();
    }
    
    // 通知监听器
    _notifyActivePlayerChanged(playerId);
  }
  
  // 清除活跃视频
  void clearActivePlayer() {
    if (_activeController != null && _activeController!.value.isPlaying) {
      developer.log('暂停并清除活跃视频: $_activePlayerId');
      _activeController!.pause();
    }
    
    _activeController = null;
    String? oldPlayerId = _activePlayerId;
    _activePlayerId = null;
    
    // 通知监听器
    _notifyActivePlayerChanged(null);
  }
  
  // 检查指定播放器是否为活跃播放器
  bool isActivePlayer(String playerId) {
    return _activePlayerId == playerId;
  }
  
  // 获取当前活跃播放器ID
  String? get activePlayerId => _activePlayerId;
} 