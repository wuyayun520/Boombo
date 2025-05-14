import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants.dart';
import 'models/user_model.dart';
import 'services/user_service.dart';
import 'services/video_service.dart'; // 导入视频服务
import 'dart:developer' as developer;
import 'dart:math' as math;
import 'package:video_player/video_player.dart';
import 'user_profile_page.dart'; // 导入用户资料页面
import 'chat_page.dart'; // 导入聊天页面
import 'subscriptions_page.dart'; // 导入订阅页面

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> with WidgetsBindingObserver {
  late Future<List<UserModel>> _usersFuture;
  int _selectedUserIndex = 0;
  bool _isPageVisible = false;
  List<UserModel>? _loadedUsers;
  final ScrollController _scrollController = ScrollController();
  bool _isInitialLoad = true; // 追踪是否是首次加载
  List<int> _hiddenCardIndices = []; // 存储已关闭的卡片索引
  bool _isVip = false; // 用户VIP状态
  bool _checkingVip = false; // 防止重复检查
  DateTime? _lastVipCheckTime; // 上次检查VIP时间
  bool _isCurrentlyScrolling = false; // 追踪当前是否正在滑动

  @override
  void initState() {
    super.initState();
    _usersFuture = UserService.loadUsers();
    // 添加观察者以监听页面可见性变化
    WidgetsBinding.instance.addObserver(this);
    _isPageVisible = true; // 初始化时设置页面为可见
    
    // 添加滚动监听，用于检测当前可见的卡片和VIP状态
    _scrollController.addListener(_onScrollEvent);
    
    // 检查VIP状态
    _checkVipStatus();
    
    // 打印日志以便调试
    _usersFuture.then((users) {
      _loadedUsers = users;
      developer.log('成功加载了 ${users.length} 个用户数据');
      for (var user in users) {
        developer.log('User: ${user.name}, Works: ${user.works.length}');
        if (user.works.isNotEmpty) {
          developer.log('First work content: ${user.works[0].content}');
          developer.log('First work video: ${user.works[0].video}');
        }
      }
      // 触发页面重新渲染并设置为初始加载
      if (mounted) setState(() {
        _isInitialLoad = true;
      });
    }).catchError((e) {
      developer.log('加载用户数据错误: $e');
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollEvent);
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // 滚动事件处理
  void _onScrollEvent() {
    // 检查当前可见的卡片
    _checkVisibleCardOnScroll();
    
    // 不再在这里检查VIP状态，改为使用NotificationListener
    // _checkVipOnScroll();
  }

  // 检查VIP状态
  Future<void> _checkVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isSubscribed = prefs.getBool(AppPrefs.isSubscribedKey) ?? false;
    final String? expiryDateStr = prefs.getString(AppPrefs.subscriptionExpiryKey);
    
    // 打印当前获取到的VIP信息
    print('Messages - 订阅状态: $isSubscribed, 到期时间: $expiryDateStr');
    
    // 检查订阅是否有效
    bool subscriptionValid = isSubscribed;
    if (expiryDateStr != null) {
      final DateTime expiryDate = DateTime.parse(expiryDateStr);
      if (DateTime.now().isAfter(expiryDate)) {
        subscriptionValid = false;
        await prefs.setBool(AppPrefs.isSubscribedKey, false);
        print('Messages - 订阅已过期: ${DateTime.now()} > $expiryDate');
      } else {
        print('Messages - 订阅有效期至: $expiryDate');
      }
    }
    
    setState(() {
      _isVip = subscriptionValid;
    });
    
    print('Messages - 最终VIP状态: $_isVip');
  }

  // 在滚动时检查VIP状态
  void _checkVipOnScroll() {
    // 防止频繁检查，设置最小间隔为2秒
    final now = DateTime.now();
    if (_lastVipCheckTime != null && 
        now.difference(_lastVipCheckTime!).inSeconds < 2) {
      return;
    }
    
    _lastVipCheckTime = now;
    
    // 如果不是VIP且未在检查过程中，显示弹窗
    if (!_isVip && !_checkingVip && _scrollController.offset > 50) {
      _checkingVip = true;
      
      // 延迟一小段时间再显示弹窗，以确保滚动已经开始
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted && !_isVip) {
          _showVipPromptDialog();
        }
        _checkingVip = false;
      });
    }
  }

  // 显示VIP提示弹窗
  void _showVipPromptDialog() {
    if (!mounted) return;
    
    // 先暂停所有视频播放
    VideoService().clearActivePlayer();
    
    showDialog(
      context: context,
      barrierDismissible: false, // 用户必须点击按钮才能关闭
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.primaryYellow, width: 2),
        ),
        title: const Text(
          'VIP Feature',
          style: TextStyle(
            color: AppColors.primaryYellow,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.star,
                color: AppColors.primaryYellow,
                size: 60,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Subscribe to VIP to unlock unlimited content browsing, ad-free experience, and premium features!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Maybe Later',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // 跳转到订阅页面
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SubscriptionsPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryYellow,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Subscribe Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    // 记录页面可见性状态
    if (state == AppLifecycleState.resumed) {
      if (!_isPageVisible) {
        _isPageVisible = true;
        developer.log('MessagesPage: App resumed, setting page as visible');
        // 页面重新变为可见，触发更新但保持滚动位置
        if (mounted) setState(() {});
        
        // 应用返回前台时重新检查VIP状态
        _checkVipStatus();
      }
    } else if (state == AppLifecycleState.paused) {
      _isPageVisible = false;
      developer.log('MessagesPage: App paused, setting page as invisible');
    }
  }

  // 通知所有卡片当前页面的可见性
  void _notifyPageVisibility(bool isVisible) {
    developer.log('MessagesPage: Notifying visibility change to $isVisible');
    // 检查当前是否在构建阶段
    if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.persistentCallbacks) {
      // 立即更新状态以确保快速响应
      if (mounted) setState(() {
        _isPageVisible = isVisible;
      });
    } else {
      // 在构建阶段，推迟状态更新
      _isPageVisible = isVisible;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) setState(() {});
      });
    }
  }

  @override
  void activate() {
    super.activate();
    // 当页面被激活时，标记为可见
    developer.log('MessagesPage: Page activated');
    _notifyPageVisibility(true);
    
    // 页面激活时重新检查VIP状态
    _checkVipStatus();
  }

  @override
  void deactivate() {
    // 当页面被停用时，标记为不可见
    developer.log('MessagesPage: Page deactivated');
    _notifyPageVisibility(false);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            // 在滑动开始时检查VIP状态
            if (notification is ScrollStartNotification && !_isCurrentlyScrolling) {
              _isCurrentlyScrolling = true;
              
              // 先重新检查一下VIP状态，确保状态是最新的
              _checkVipStatus().then((_) {
                // 只有非VIP用户才显示弹窗，并且确保不是初次加载
                if (!_isVip && !_isInitialLoad && !_checkingVip) {
                  // 防止频繁检查，设置最小间隔为5秒
                  final now = DateTime.now();
                  if (_lastVipCheckTime == null || 
                      now.difference(_lastVipCheckTime!).inSeconds >= 5) {
                    
                    _lastVipCheckTime = now;
                    _checkingVip = true;
                    
                    // 再次确认VIP状态
                    print('Messages - 准备显示VIP弹窗，当前VIP状态: $_isVip');
                    
                    Future.microtask(() {
                      if (mounted && !_isVip) {
                        _showVipPromptDialog();
                      }
                      _checkingVip = false;
                    });
                  }
                }
              });
            } else if (notification is ScrollEndNotification) {
              // 滑动结束，重置状态
              _isCurrentlyScrolling = false;
            }
            return false; // 返回false允许事件继续传播
          },
          child: FutureBuilder<List<UserModel>>(
            future: _usersFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(color: AppColors.primaryYellow),
                );
              } else if (snapshot.hasError) {
                developer.log('Error loading users: ${snapshot.error}');
                return Center(
                  child: Text(
                    'Error: ${snapshot.error}',
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                developer.log('No user data found');
                return const Center(
                  child: Text(
                    'No users found',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }

              final users = snapshot.data!;
              _loadedUsers = users;
              
              // 检查是否是初始加载
              bool isFirstLoad = _isInitialLoad;
              if (_isInitialLoad) {
                _isInitialLoad = false;
                developer.log('MessagesPage: Initial load completed, setting up content cards');
              }
              
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 16.0, bottom: 16.0),
                    child: Text(
                      'Content Sharing',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  // Horizontal user avatars
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        // 如果卡片被隐藏，跳过显示对应头像
                        if (_hiddenCardIndices.contains(index)) {
                          return const SizedBox.shrink();
                        }
                        
                        final user = users[index];
                        final isSelected = _selectedUserIndex == index;
                        
                        // 显示完整用户名，不再截断
                        String displayName = user.name.split(' ')[0];
                        
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedUserIndex = index;
                              // 选择用户后可以滚动到相应的卡片位置
                              if (_scrollController.hasClients) {
                                double itemPosition = index * 
                                    (MediaQuery.of(context).size.width * 1.3 + 16); // 卡片高度 + 边距
                                _scrollController.animateTo(
                                  itemPosition,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }
                            });
                          },
                          onLongPress: () {
                            // 长按打开用户资料页面
                            // 先暂停当前所有视频播放
                            VideoService().clearActivePlayer();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => UserProfilePage(user: user),
                              ),
                            );
                          },
                          child: Container(
                            width: 70,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Avatar with border
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // Border
                                    Container(
                                      width: 68,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isSelected 
                                              ? AppColors.primaryYellow 
                                              : Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                    
                                    // Avatar
                                    GestureDetector(
                                      onTap: () {
                                        // 点击头像直接跳转到用户资料页面
                                        // 先暂停当前所有视频播放
                                        VideoService().clearActivePlayer();
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => UserProfilePage(user: user),
                                          ),
                                        );
                                      },
                                      child: Container(
                                      width: 62,
                                      height: 62,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(31),
                                        child: _buildUserImage(user.icon),
                                        ),
                                      ),
                                    ),
                                    
                                    // Online indicator
                                    Positioned(
                                      right: 2,
                                      bottom: 2,
                                      child: Container(
                                        width: 12,
                                        height: 12,
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
                                
                                const SizedBox(height: 8),
                                
                                // Username - 使用完整名称
                                Text(
                                  displayName,
                                  style: TextStyle(
                                    color: isSelected 
                                        ? AppColors.primaryYellow 
                                        : Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Content Cards - vertical scrollable list
                            Expanded(
                              child: ListView.builder(
                    key: const PageStorageKey('content_cards_list'),
                    controller: _scrollController,
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom), // 添加安全区域底部边距
                    itemCount: users.length,
                              itemBuilder: (context, index) {
                        // 如果卡片被隐藏，返回空容器
                        if (_hiddenCardIndices.contains(index)) {
                          return const SizedBox.shrink();
                        }
                        
                        // 确保用户有作品数据
                        bool hasWorks = users[index].works.isNotEmpty;
                        String workContent = hasWorks 
                            ? users[index].works[0].content 
                            : users[index].openingremarks;
                        String videoPath = hasWorks 
                            ? users[index].works[0].video 
                            : '';
                            
                        // 设置卡片高度为320
                        return Container(
                          height: 340,
                          margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                          child: ContentCard(
                            user: users[index],
                            workContent: workContent,
                            videoPath: videoPath,
                            isPageVisible: _isPageVisible,
                            isFirstVisible: isFirstLoad && index == 0, // 首次加载时第一个卡片应该立即播放
                                    onTap: () {
                                      setState(() {
                                _selectedUserIndex = index;
                                      });
                                    },
                            onClose: () {
                              // 处理关闭卡片
                              setState(() {
                                _hiddenCardIndices.add(index);
                              });
                              // 停止视频播放
                              VideoService().clearActivePlayer();
                            },
                        ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
  
  // 统一处理图片加载的方法
  Widget _buildUserImage(String imagePath, {BoxFit boxFit = BoxFit.cover}) {
    // 检查是否使用asset路径
    if (imagePath.startsWith('assets/')) {
      return Image.asset(
        imagePath,
      fit: boxFit,
      errorBuilder: (context, error, stackTrace) {
          developer.log('无法加载图片: $imagePath, 错误: $error');
          // 如果加载资源失败，使用默认用户图标
        return Container(
          color: Colors.grey[800],
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 36,
          ),
        );
      },
    );
  }
    
    // 如果不是本地资源路径，则使用默认图标
    return Container(
      color: Colors.grey[800],
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 36,
      ),
    );
}

  // 在滚动时检查哪个卡片是可见的
  void _checkVisibleCardOnScroll() {
    if (!mounted || _loadedUsers == null || _loadedUsers!.isEmpty) return;
    
    // 如果正在滚动，使用延迟等待滚动稳定
    if (_scrollController.position.isScrollingNotifier.value) {
      // 取消之前的延迟检测并创建新的
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted && !_scrollController.position.isScrollingNotifier.value) {
          _determineVisibleCard();
        }
      });
    } else {
      _determineVisibleCard();
    }
  }
  
  // 确定当前哪个卡片是可见的
  void _determineVisibleCard() {
    if (!mounted || _loadedUsers == null) return;
    
    final double scrollOffset = _scrollController.offset;
    final double viewportHeight = _scrollController.position.viewportDimension;
    
    // 计算每个卡片的高度（包括margin）
    const double cardHeight = 340 + 16; // card height + bottom margin
    
    // 卡片顶部位置与ScrollView的相对偏移
    final double centerPosition = scrollOffset + (viewportHeight / 2);
    
    // 找到最接近中心点的卡片
    final int centerIndex = (centerPosition / cardHeight).round();
    
    // 确保索引在有效范围内
    final int visibleIndex = math.max(0, math.min(centerIndex, _loadedUsers!.length - 1));
    
    developer.log('滚动位置: $scrollOffset, 视口高度: $viewportHeight, 中心位置: $centerPosition, 卡片索引: $visibleIndex');
    
    if (_selectedUserIndex != visibleIndex) {
      developer.log('检测到新的可见卡片: $visibleIndex');
      setState(() {
        _selectedUserIndex = visibleIndex;
      });
      
      // 通知所有卡片更新可见性状态
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) setState(() {});
      });
    }
  }
}

// 内容卡片组件
class ContentCard extends StatefulWidget {
  final UserModel user;
  final String workContent;
  final String videoPath;
  final bool isPageVisible;
  final bool isFirstVisible;
  final VoidCallback onTap;
  final VoidCallback? onClose; // 添加关闭回调
  
  const ContentCard({
    required this.user,
    required this.workContent,
    required this.videoPath,
    this.isPageVisible = true,
    this.isFirstVisible = false,
    required this.onTap,
    this.onClose,
    Key? key,
  }) : super(key: key);
  
  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  bool _isPlaying = false;
  bool _isLiked = false;
  bool _isShowingChat = false; // 添加聊天按钮状态
  late AnimationController _playAnimation;
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;
  double _videoProgress = 0.0;
  bool _isVisible = false;
  bool _isFirstBuild = true;
  bool _isInitializing = false;
  
  // 定义图片资源路径
  static const String chatNormal = 'assets/images/boom_play_chat_nor.png';
  static const String chatSelected = 'assets/images/boom_play_chat_pre.png';
  static const String closeNormal = 'assets/images/boom_play_close_nor.png';
  static const String closeSelected = 'assets/images/boom_play_close_pre.png';
  static const String likeNormal = 'assets/images/boom_play_like_nor.png';
  static const String likeSelected = 'assets/images/boom_play_like_pre.png';
  
  // 卡片的唯一标识符，用于视频服务
  late String _playerId;
  
  // 视频服务单例
  final VideoService _videoService = VideoService();
  
  @override
  bool get wantKeepAlive => true;
  
  @override
  void initState() {
    super.initState();
    
    // 创建播放器ID
    _playerId = 'player_${widget.user.userId}';
    
    _playAnimation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    
    // 添加生命周期观察者，用于处理应用进入后台
    WidgetsBinding.instance.addObserver(this);
    
    // 添加活跃播放器变化监听
    _videoService.addActivePlayerChangedListener(_onActivePlayerChanged);
    
    // 打印一下视频路径便于调试
    developer.log('初始化卡片 - 用户: ${widget.user.name}, 视频路径: ${widget.videoPath}, 首次可见: ${widget.isFirstVisible}');
    
    // 初始化视频控制器
    _initializeVideoController();
    
    // 如果是首次可见的卡片，直接标记为可见
    if (widget.isFirstVisible) {
      _isVisible = true;
      developer.log('卡片标记为首次可见 - 用户: ${widget.user.name}');
    }
    
    // 使用PostFrameCallback来确保视图首次渲染后自动播放
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _isFirstBuild = false;
      
      // 首次渲染完成后，如果是首次可见的卡片且页面可见，直接播放
      if (widget.isFirstVisible && widget.isPageVisible && mounted) {
        developer.log('首次渲染完成，尝试自动播放 - 用户: ${widget.user.name}');
        // 确保视频已初始化
        if (_isVideoInitialized) {
          _playVideo();
        } else {
          // 设置标志，以便视频初始化完成后自动播放
          _isVisible = true;
        }
      } else {
        // 检查当前视图是否可见 - 这需要与ListView结合使用
        _checkVisibility();
      }
    });
  }
  
  // 处理活跃播放器变化
  void _onActivePlayerChanged(String? activePlayerId) {
    if (mounted && _videoController != null) {
      // 如果当前不是活跃播放器但正在播放，则暂停
      if (activePlayerId != _playerId && _isPlaying) {
        setState(() {
          _isPlaying = false;
          _playAnimation.reverse();
        });
      }
      
      // 如果当前成为活跃播放器但未播放，则更新UI状态
      if (activePlayerId == _playerId && !_isPlaying) {
        setState(() {
          _isPlaying = true;
          _playAnimation.forward();
        });
      }
    }
  }
  
  // 处理应用程序生命周期变化
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    if (state == AppLifecycleState.paused) {
      // 当应用程序进入后台时暂停视频
      _pauseVideo();
      developer.log('应用进入后台，暂停视频 - 用户: ${widget.user.name}');
    } else if (state == AppLifecycleState.resumed) {
      // 当应用程序返回前台时，强制暂停所有视频
      _pauseVideo();
      _videoService.clearActivePlayer();
      setState(() {
        _isPlaying = false;
        _playAnimation.reverse();
      });
      developer.log('应用返回前台，强制暂停视频 - 用户: ${widget.user.name}');
    }
  }
  
  // 根据页面和卡片可见性更新播放状态
  void _updatePlayingStateBasedOnVisibility() {
    if (widget.isPageVisible && _isVisible) {
      // 从后台恢复时不自动播放
      if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
        developer.log('从后台恢复，不自动播放 - 用户: ${widget.user.name}');
        return;
      }
      developer.log('条件满足，播放视频 - 用户: ${widget.user.name}');
      _playVideo();
    } else {
      developer.log('条件不满足，暂停视频 - 用户: ${widget.user.name}, 页面可见: ${widget.isPageVisible}, 卡片可见: $_isVisible');
      _pauseVideo();
    }
  }
  
  // 检查卡片是否在视图中可见
  void _checkVisibility() {
    if (!mounted) return;
    
    // 使用视口检测技术来确定当前组件是否可见
    final RenderObject? renderObject = context.findRenderObject();
    if (renderObject == null || !renderObject.attached) {
      return;
    }
    
    // 获取渲染盒子
    final RenderBox box = renderObject as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero);
    final Size size = box.size;
    
    // 获取屏幕尺寸
    final Size screenSize = MediaQuery.of(context).size;
    
    // 计算可见区域比例
    final double visibleTop = math.max(0, position.dy);
    final double visibleBottom = math.min(screenSize.height, position.dy + size.height);
    final double visibleHeight = visibleBottom - visibleTop;
    final double visibleRatio = visibleHeight / size.height;
    
    // 计算卡片中心点在屏幕上的位置
    final double cardCenterY = position.dy + (size.height / 2);
    final double screenCenterY = screenSize.height / 2;
    
    // 检查卡片中心是否在屏幕中心附近 (上下20%的范围)
    final double centerDistanceRatio = (cardCenterY - screenCenterY).abs() / screenSize.height;
    final bool isNearScreenCenter = centerDistanceRatio < 0.2;
    
    // 当卡片在屏幕上可见超过50%或者卡片中心点接近屏幕中心，将其标记为可见
    final bool isNowVisible = visibleRatio > 0.5 || isNearScreenCenter;
    
    // 如果可见性发生变化
    if (isNowVisible != _isVisible) {
      developer.log('卡片可见性变化 - 用户: ${widget.user.name}, 之前: $_isVisible, 现在: $isNowVisible, 可见比例: $visibleRatio, 中心距离比例: $centerDistanceRatio');
      
      // 避免在build过程中调用setState
      if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.persistentCallbacks) {
        setState(() {
          _isVisible = isNowVisible;
        });
        // 更新播放状态
        _updatePlayingStateBasedOnVisibility();
      } else {
        // 如果在构建阶段，推迟状态更新
        _isVisible = isNowVisible;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            // 延迟到下一帧更新UI
            setState(() {});
            // 更新播放状态
            _updatePlayingStateBasedOnVisibility();
          }
        });
      }
    } else if (_isFirstBuild && isNowVisible && widget.isPageVisible) {
      // 首次构建且可见，确保播放
      developer.log('首次构建且可见，确保播放 - 用户: ${widget.user.name}');
      // 避免在build过程中调用
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _playVideo();
      });
    }
  }
  
  // 播放视频
  void _playVideo() {
    if (_videoController != null && 
        _videoController!.value.isInitialized && 
        !_isPlaying) {
      // 使用视频服务设置当前播放器为活跃播放器
      _videoService.setActivePlayer(_playerId, _videoController!);
      
      setState(() {
        _isPlaying = true;
        _playAnimation.forward();
      });
      
      developer.log('视频开始播放 - 用户: ${widget.user.name}');
    } else if (_videoController == null || !_videoController!.value.isInitialized) {
      developer.log('无法播放视频：控制器未初始化 - 用户: ${widget.user.name}');
      // 如果视频控制器未初始化，重新尝试初始化
      if (!_isInitializing) {
        _initializeVideoController();
      }
    }
  }
  
  // 暂停视频
  void _pauseVideo() {
    if (_videoController != null && 
        _videoController!.value.isInitialized && 
        _isPlaying) {
      // 如果这是当前的活跃播放器，则清除
      if (_videoService.isActivePlayer(_playerId)) {
        _videoService.clearActivePlayer();
      } else {
        // 直接暂停不影响其他播放器
        _videoController!.pause();
      }
      
      setState(() {
        _isPlaying = false;
        _playAnimation.reverse();
      });
      
      developer.log('视频暂停播放 - 用户: ${widget.user.name}');
    }
  }
  
  // 初始化视频控制器
  void _initializeVideoController() {
    if (_isInitializing) return;
    _isInitializing = true;
    
    // 尝试使用真实视频路径
    try {
      if (widget.videoPath.isNotEmpty) {
        if (widget.videoPath.startsWith('assets/')) {
          developer.log('初始化资源视频 - 路径: ${widget.videoPath}');
          _videoController = VideoPlayerController.asset(widget.videoPath);
        } else if (widget.videoPath.startsWith('http')) {
          developer.log('初始化网络视频 - 路径: ${widget.videoPath}');
          _videoController = VideoPlayerController.network(widget.videoPath);
        } else {
          // 使用测试视频
          developer.log('使用测试视频 - 用户: ${widget.user.name}');
          _videoController = VideoPlayerController.network(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
          );
        }
        
        _videoController!.initialize().then((_) {
          // 确保组件未被销毁
          if (mounted) {
            setState(() {
              _isVideoInitialized = true;
              _isInitializing = false;
              
              // 初始化完成后检查可见性并自动播放
              developer.log('视频初始化完成 - 用户: ${widget.user.name}, 检查是否应该播放');
              if (widget.isFirstVisible && widget.isPageVisible) {
                developer.log('是首个可见视频，自动播放 - 用户: ${widget.user.name}');
                _playVideo();
              } else {
                _checkVisibility();
              }
            });
            
            // 添加监听器以更新进度条
            _videoController!.addListener(_updateVideoProgress);
            
            // 设置循环播放
            _videoController!.setLooping(true);
          }
        }).catchError((error) {
          developer.log('视频初始化错误 - 用户: ${widget.user.name}, 错误: $error');
          _isInitializing = false;
          _useDefaultVideo();
        });
      } else {
        _isInitializing = false;
        _useDefaultVideo();
      }
    } catch (e) {
      developer.log('视频控制器初始化错误 - 用户: ${widget.user.name}, 错误: $e');
      _isInitializing = false;
      _useDefaultVideo();
    }
  }
  
  // 使用默认测试视频
  void _useDefaultVideo() {
    if (_isInitializing) return;
    _isInitializing = true;
    
    // 使用测试视频
    developer.log('使用默认测试视频 - 用户: ${widget.user.name}');
    _videoController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
    );
    
    _videoController!.initialize().then((_) {
      if (mounted) {
        setState(() {
          _isVideoInitialized = true;
          _isInitializing = false;
          
          // 初始化完成后检查可见性并自动播放
          if (widget.isFirstVisible && widget.isPageVisible) {
            _playVideo();
          } else {
            _checkVisibility();
          }
        });
        _videoController!.addListener(_updateVideoProgress);
        _videoController!.setLooping(true);
      }
    }).catchError((error) {
      _isInitializing = false;
      developer.log('默认视频初始化错误 - 用户: ${widget.user.name}, 错误: $error');
    });
  }
  
  // 更新视频进度
  void _updateVideoProgress() {
    if (_videoController != null && _videoController!.value.isInitialized) {
      final duration = _videoController!.value.duration;
      final position = _videoController!.value.position;
      
      if (duration.inMilliseconds > 0) {
        setState(() {
          _videoProgress = position.inMilliseconds / duration.inMilliseconds;
        });
      }
    }
  }
  
  @override
  void didUpdateWidget(ContentCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // 如果视频路径改变，重新初始化视频控制器
    if (oldWidget.videoPath != widget.videoPath) {
      developer.log('视频路径变化，重新初始化 - 用户: ${widget.user.name}');
      _videoController?.dispose();
      _initializeVideoController();
    }
    
    // 监测页面可见性变化
    if (oldWidget.isPageVisible != widget.isPageVisible) {
      developer.log('页面可见性变化 - 用户: ${widget.user.name}, 之前: ${oldWidget.isPageVisible}, 现在: ${widget.isPageVisible}');
      // 如果页面可见性发生变化，更新播放状态
      _updatePlayingStateBasedOnVisibility();
    }
    
    // 检查可见性状态
    _checkVisibility();
  }
  
  @override
  void dispose() {
    developer.log('销毁卡片 - 用户: ${widget.user.name}');
    _playAnimation.dispose();
    
    // 如果这是当前活跃的播放器，清除它
    if (_videoService.isActivePlayer(_playerId)) {
      _videoService.clearActivePlayer();
    }
    
    // 移除监听器
    _videoService.removeActivePlayerChangedListener(_onActivePlayerChanged);
    
    // 清理视频控制器
    _videoController?.removeListener(_updateVideoProgress);
    _videoController?.dispose();
    
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  
  void _togglePlayPause() {
    if (_isPlaying) {
      _pauseVideo();
    } else {
      _playVideo();
    }
  }
  
  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }
  
  void _toggleChat() {
    // 暂停当前视频播放
    _pauseVideo();
    
    // 导航到聊天页面
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(user: widget.user),
      ),
    ).then((_) {
      // 从聊天页面返回后，检查是否需要恢复视频播放
      if (mounted) {
        _checkVisibility();
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用，因为使用了AutomaticKeepAliveClientMixin
    
    // 不再需要计算卡片高度，使用父组件提供的固定高度
    // 构建完成后的下一帧再检查可见性，但不在每次构建时添加
    if (_isFirstBuild) {
      _isFirstBuild = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _checkVisibility();
      });
    }
    
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
        border: Border.all(color: _isLiked ? Colors.red : Colors.transparent, width: 2),
            ),
      child: Stack(
        children: [
          // 视频播放器
          ClipRRect(
              borderRadius: BorderRadius.circular(22),
            child: GestureDetector(
              onTap: _togglePlayPause,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // 视频或封面图
                  if (_isVideoInitialized && _videoController != null)
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity, // 填满整个容器
                      child: FittedBox(
                    fit: BoxFit.cover,
                        child: SizedBox(
                          width: _videoController!.value.size.width,
                          height: _videoController!.value.size.height,
                          child: VideoPlayer(_videoController!),
                        ),
                      ),
                    )
                  else
                    widget.videoPath.startsWith('assets/') 
                      ? Image.asset(
                          widget.user.userprofile,
                          width: double.infinity,
                          height: double.infinity, // 填满整个容器
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            developer.log('无法加载视频封面: ${widget.user.userprofile}, 错误: $error');
                            // 使用备用图片
                            return Image.asset(
                              'assets/images/boom_homebg.png', // 使用应用内的默认背景
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            );
                          },
                        )
                      : Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black,
                          child: const Center(
                            child: Icon(
                              Icons.video_file,
                              color: Colors.white54,
                              size: 48,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
          
          // 播放按钮覆盖层 - 仅在暂停时显示
          if (!_isPlaying)
                  Positioned.fill(
              child: GestureDetector(
                onTap: _togglePlayPause,
                    child: Center(
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                    ),
                        ),
                      ),
                    ),
                  ),
                  
          // 聊天消息按钮 - 使用提供的图片资源
                  Positioned(
                    right: 16,
            bottom: 68, // 位置为点赞按钮底部 + 间距12 (16+40+12=68)
            child: GestureDetector(
              onTap: _toggleChat,
                    child: Container(
                width: 40, // 确保大小为40x40
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  _isShowingChat ? chatSelected : chatNormal,
                  width: 40,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      child: const Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                        size: 24,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          
          // 关闭按钮 - 使用提供的图片资源（移到底部）
          Positioned(
            right: 16,
            bottom: 120, // 聊天按钮位置 + 聊天按钮高度 + 间距12 (68+40+12=120)
            child: GestureDetector(
              onTap: () {
                _pauseVideo(); // 暂停视频
                // 通知父组件关闭此卡片
                if (widget.onClose != null) {
                  widget.onClose!();
                }
              },
              child: Container(
                width: 40, // 确保大小为40x40
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  closeNormal,
                  width: 40,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 24,
                      ),
                    );
                  },
                ),
                      ),
                    ),
                  ),
                  
          // 左下角用户头像和用户信息
                  Positioned(
                    left: 16,
                    bottom: 16,
            child: Row(
                          children: [
                            // 用户头像
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                    child: widget.user.icon.startsWith('assets/')
                        ? Image.asset(
                            widget.user.icon,
                                  fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              developer.log('无法加载用户头像: ${widget.user.icon}, 错误: $error');
                              return Container(
                                color: Colors.grey[800],
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              );
                            },
                          )
                        : Container(
                            color: Colors.grey[800],
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 24,
                            ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            // 用户名和描述
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                    // 用户名
                                Text(
                      '@${widget.user.name}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                      overflow: TextOverflow.ellipsis,
                        ),
                    // 内容描述 - 这里使用workContent
                        SizedBox(
                      width: MediaQuery.of(context).size.width - 140, // 调整宽度以避免溢出
                          child: Text(
                        widget.workContent,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                ],
            ),
          ),
          
          // 右侧点赞按钮 - 使用提供的图片资源
          Positioned(
            right: 16,
            bottom: 16,
            child: GestureDetector(
              onTap: _toggleLike,
            child: Container(
                width: 40, // 确保大小为40x40
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
              ),
                child: Image.asset(
                  _isLiked ? likeSelected : likeNormal,
                  width: 40,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.3),
      ),
      child: Icon(
                        _isLiked ? Icons.favorite : Icons.favorite_border,
                        color: _isLiked ? Colors.red : Colors.white,
        size: 24,
      ),
    );
                  },
                ),
              ),
                          ),
                        ),
                      ],
      ),
    );
  }
} 