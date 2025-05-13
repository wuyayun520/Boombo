import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'services/background_music_service.dart';

enum CallStatus {
  calling,
  ended,
  failed,
  offline
}

class VideoCallPage extends StatefulWidget {
  final String recipientName;
  final String recipientImageUrl;

  const VideoCallPage({
    Key? key,
    required this.recipientName,
    required this.recipientImageUrl,
  }) : super(key: key);

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> with SingleTickerProviderStateMixin {
  CallStatus _callStatus = CallStatus.calling;
  Timer? _callTimeoutTimer;
  
  // 动画控制器
  late AnimationController _pulseAnimationController;
  late Animation<double> _pulseAnimation;
  
  // 背景音乐服务
  final BackgroundMusicService _backgroundMusicService = BackgroundMusicService();
  
  @override
  void initState() {
    super.initState();
    
    // 首先重新初始化背景音乐服务，确保每次通话都有新的音频会话
    _backgroundMusicService.reinitialize().then((_) {
      print('Background music service has been reset, ready to start call');
      
      // 在音频服务初始化完成后开始通话
      _initializeCall();
    });
    
    // 初始化动画控制器
    _pulseAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(
        parent: _pulseAnimationController,
        curve: Curves.easeInOut,
      ),
    );
    
    // 开始重复动画
    _pulseAnimationController.repeat(reverse: true);
  }
  
  // 初始化通话
  Future<void> _initializeCall() async {
    // 请求必要的权限
    await _requestPermissions();
    
    print('Call started at: ${DateTime.now()}');
    
    // 播放拨号铃声
    await _backgroundMusicService.handleOutgoingCall();
    
    print('Starting call timeout timer - EXACTLY 20 seconds');
    
    // 设置精确超时计时器 - 从现在开始计时，确保20秒后执行回调
    _callTimeoutTimer?.cancel(); // 取消任何可能存在的旧计时器
    _callTimeoutTimer = Timer(const Duration(seconds: 20), _handleCallTimeout);
  }
  
  // 处理通话超时
  void _handleCallTimeout() {
    print('Call timeout triggered exactly at: ${DateTime.now()}');
    
    if (!mounted) return;
    
    setState(() {
      _callStatus = CallStatus.offline;
    });
    
    // 停止铃声
    _backgroundMusicService.stopPlaying();
    
    print('Call status set to offline, will close page in 2 seconds');
    
    // 2秒后关闭页面
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      print('Now closing video call page at: ${DateTime.now()}');
      Navigator.pop(context);
    });
  }
  
  // 请求权限
  Future<void> _requestPermissions() async {
    await Permission.camera.request();
    await Permission.microphone.request();
  }
  
  // 挂断电话
  void _endCall() {
    print('Ending call');
    _callTimeoutTimer?.cancel();
    
    // 立即停止背景音乐
    _backgroundMusicService.stopPlaying();
    
    if (mounted) {
      setState(() {
        _callStatus = CallStatus.ended;
      });
      
      // 延迟关闭页面
      Future.delayed(const Duration(seconds: 1), () {
        // 再次确保背景音乐已停止，然后退出页面
        _backgroundMusicService.stopPlaying().then((_) {
          if (mounted) {
            Navigator.pop(context);
          }
        });
      });
    }
  }
  
  @override
  void dispose() {
    print('Video call page disposed');
    _callTimeoutTimer?.cancel();
    _pulseAnimationController.dispose();
    
    // 确保彻底停止背景音乐播放
    Future.microtask(() async {
      await _backgroundMusicService.stopPlaying();
      print('Background music stopped');
    });
    
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // 用户按返回键时确保停止背景音乐
        _callTimeoutTimer?.cancel();
        await _backgroundMusicService.stopPlaying();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // 背景 - 在实际应用中，这里应该是视频流
            Container(
              width: double.infinity,
              height: double.infinity,
              // 可以添加渐变或者模糊效果
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade900,
                    Colors.black,
                  ],
                ),
              ),
            ),
            
            // 用户信息和状态
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 上部信息区域
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        // 用户头像 - 带有呼吸动画
                        _callStatus == CallStatus.calling
                          ? AnimatedBuilder(
                              animation: _pulseAnimationController,
                              builder: (context, child) {
                                return Transform.scale(
                                  scale: _pulseAnimation.value,
                                  child: child,
                                );
                              },
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: widget.recipientImageUrl.startsWith('http')
                                  ? NetworkImage(widget.recipientImageUrl)
                                  : AssetImage(widget.recipientImageUrl) as ImageProvider,
                              ),
                            )
                          : CircleAvatar(
                              radius: 60,
                              backgroundImage: widget.recipientImageUrl.startsWith('http')
                                ? NetworkImage(widget.recipientImageUrl)
                                : AssetImage(widget.recipientImageUrl) as ImageProvider,
                            ),
                        
                        const SizedBox(height: 20),
                        
                        // 联系人名称
                        Text(
                          widget.recipientName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        const SizedBox(height: 10),
                        
                        // 通话状态文本
                        Text(
                          _getStatusText(),
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 底部控制区域
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 挂断按钮
                        FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: _endCall,
                          child: const Icon(Icons.call_end, color: Colors.white, size: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 获取状态文本
  String _getStatusText() {
    switch (_callStatus) {
      case CallStatus.calling:
        return 'Calling...';
      case CallStatus.ended:
        return 'Call ended';
      case CallStatus.failed:
        return 'Call failed';
      case CallStatus.offline:
        return 'User is offline';
    }
  }
} 