import 'package:flutter/material.dart';
import 'constants.dart';
import 'models/user_model.dart';
import 'services/user_service.dart';
import 'services/chat_storage_service.dart';
import 'chat_page.dart';
import 'dart:math' as math;
import 'dart:developer' as developer;

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> with WidgetsBindingObserver, AutomaticKeepAliveClientMixin<LivePage> {
  late Future<List<UserModel>> _usersFuture;
  List<ChatHistoryItem> _chatHistoryItems = [];
  bool _isLoading = true;
  bool _isPageVisible = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _usersFuture = UserService.loadUsers();
    _loadChatHistory();
    
    // 添加观察者以监听页面可见性变化
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _isPageVisible) {
      // 当应用程序从后台恢复且页面可见时，刷新消息列表
      _loadChatHistory();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _checkVisibilityAndRefresh();
  }

  void _checkVisibilityAndRefresh() {
    // 检查页面是否可见
    final bool isNowVisible = ModalRoute.of(context)?.isCurrent ?? false;
    
    // 如果页面状态从不可见变为可见，刷新消息列表
    if (!_isPageVisible && isNowVisible) {
      developer.log('LivePage: Page became visible, refreshing messages');
      _loadChatHistory();
    }
    
    _isPageVisible = isNowVisible;
  }

  Future<void> _loadChatHistory() async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final users = await _usersFuture;
      
      List<ChatHistoryItem> historyItems = [];
      
      // 为每个用户获取最新的消息
      for (final user in users) {
        try {
          final latestMessage = await ChatStorageService.getLatestMessage(user.userId);
          
          // 只添加有聊天记录的用户
          if (latestMessage != null) {
            historyItems.add(
              ChatHistoryItem(
                user: user,
                latestMessage: latestMessage,
                timestamp: latestMessage.timestamp,
              ),
            );
            developer.log('Loaded chat history for user: ${user.name}, message type: ${latestMessage.type}');
          }
        } catch (e) {
          developer.log('Error loading chat history for user ${user.name}: $e');
          continue;
        }
      }
      
      // 按最新消息时间排序
      historyItems.sort((a, b) => b.timestamp.compareTo(a.timestamp));
      
      if (mounted) {
        setState(() {
          _chatHistoryItems = historyItems;
          _isLoading = false;
        });
        developer.log('Updated chat history list with ${historyItems.length} items');
      }
    } catch (e) {
      developer.log('Error loading chat history: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);  // 需要调用 super.build 因为使用了 AutomaticKeepAliveClientMixin
    
    // 添加监听器以检测页面可见性变化
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkVisibilityAndRefresh();
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 页面标题
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
              child: Text(
                'Messages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            // 消息列表
            Expanded(
              child: _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(color: AppColors.primaryYellow),
                    )
                  : _chatHistoryItems.isEmpty
                      ? const Center(
                          child: Text(
                            'No messages yet',
                            style: TextStyle(color: Colors.white70),
                          ),
                        )
                      : RefreshIndicator(
                          color: AppColors.primaryYellow,
                          backgroundColor: Colors.black,
                          onRefresh: _loadChatHistory,
                          child: ListView.builder(
                            itemCount: _chatHistoryItems.length,
                            itemBuilder: (context, index) {
                              final item = _chatHistoryItems[index];
                              return MessageListItem(
                                item: item,
                                onTap: () async {
                                  // 点击进入聊天页面
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChatPage(user: item.user),
                                    ),
                                  );
                                  // 返回后立即刷新消息列表
                                  if (mounted) {
                                    _loadChatHistory();
                                  }
                                },
                              );
                            },
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatHistoryItem {
  final UserModel user;
  final ChatMessage latestMessage;
  final DateTime timestamp;

  ChatHistoryItem({
    required this.user,
    required this.latestMessage,
    required this.timestamp,
  });
}

class MessageListItem extends StatelessWidget {
  final ChatHistoryItem item;
  final VoidCallback onTap;

  const MessageListItem({
    required this.item,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 格式化消息时间
    final now = DateTime.now();
    final difference = now.difference(item.timestamp);
    final String timeText;
    
    if (difference.inDays > 365) {
      timeText = '${(difference.inDays / 365).floor()}y';
    } else if (difference.inDays > 30) {
      timeText = '${(difference.inDays / 30).floor()}mo';
    } else if (difference.inDays > 0) {
      timeText = '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      timeText = '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      timeText = '${difference.inMinutes}m';
    } else {
      timeText = 'now';
    }

    // 获取消息预览文本
    String previewText = '';
    if (item.latestMessage.type == ChatMessageType.text) {
      previewText = item.latestMessage.content;
    } else if (item.latestMessage.type == ChatMessageType.voice) {
      previewText = '🎤 Voice message';
    } else if (item.latestMessage.type == ChatMessageType.image) {
      previewText = '🖼️ Image';
    }

    // 添加消息状态标记
    if (!item.latestMessage.isMe) {
      if (previewText.length > 35) {
        previewText = previewText.substring(0, 32) + '...';
      }
    } else {
      previewText = 'You: $previewText';
      if (previewText.length > 40) {
        previewText = previewText.substring(0, 37) + '...';
      }
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            // 用户头像
            Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: _buildUserImage(item.user),
                  ),
                ),
                // 在线状态指示
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(width: 16),
            
            // 用户信息和最新消息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.user.name.split(' ')[0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        timeText,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    previewText,
                    style: TextStyle(
                      color: item.latestMessage.isMe ? Colors.grey[500] : Colors.white,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildUserImage(UserModel user) {
    if (user.icon.startsWith('assets/')) {
      return Image.asset(
        user.icon,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          developer.log('Failed to load user avatar: ${user.icon}, error: $error');
          return Container(
            color: Colors.grey[800],
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          );
        },
      );
    }
    
    // 如果不是资源路径，使用默认头像
    return Container(
      color: Colors.grey[800],
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 30,
      ),
    );
  }
} 