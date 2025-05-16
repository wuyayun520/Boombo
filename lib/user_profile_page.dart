import 'package:flutter/material.dart';
import 'models/user_model.dart';
import 'constants.dart';
import 'services/video_service.dart';
import 'dart:math' as math;
import 'package:video_player/video_player.dart';
import 'dart:developer' as developer;
import 'chat_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'services/user_profile_service.dart';
import 'in_app_purchases_page.dart';

class UserProfilePage extends StatefulWidget {
  final UserModel user;
  final bool hasCheckedQuota;
  
  const UserProfilePage({
    required this.user,
    this.hasCheckedQuota = false,
    Key? key,
  }) : super(key: key);
  
  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> with WidgetsBindingObserver {
  final VideoService _videoService = VideoService();
  bool _isFollowing = false;
  bool _isBlocked = false;
  final String _blockedUsersKey = 'blocked_users';
  final String _followingUsersKey = 'following_users';
  bool _hasQuotaCheck = false;
  
  // 随机生成用户统计数据
  String _followingCount = '0';
  late final String _followersCount;
  late final String _likesCount;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkQuota();
    _loadBlockedStatus();
    _loadFollowingStatus();
    
    // 生成随机的统计数据
    final random = math.Random();
    
    // 关注数 (10-200)
    _followingCount = (random.nextInt(191) + 10).toString();
    
    // 粉丝数 (100-9999)
    final followers = random.nextInt(9900) + 100;
    _followersCount = followers > 1000 
        ? '${(followers / 1000).toStringAsFixed(1)}K' 
        : followers.toString();
    
    // 点赞数 (1000-99999)
    final likes = random.nextInt(99000) + 1000;
    _likesCount = likes > 1000 
        ? '${(likes / 1000).toStringAsFixed(1)}K' 
        : likes.toString();
  }
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 当应用从后台恢复到前台时
    if (state == AppLifecycleState.resumed) {
      // 确保所有视频停止播放
      _videoService.clearActivePlayer();
      developer.log('应用恢复前台：停止所有视频播放');
    }
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // 确保离开页面时停止视频播放
    _videoService.clearActivePlayer();
    super.dispose();
  }
  
  // 加载拉黑状态
  Future<void> _loadBlockedStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = prefs.getStringList(_blockedUsersKey) ?? [];
    
    if (mounted) {
      setState(() {
        _isBlocked = blockedUsers.contains(widget.user.userId);
      });
    }
  }

  // 保存拉黑状态
  Future<void> _saveBlockedStatus(bool blocked) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = prefs.getStringList(_blockedUsersKey) ?? [];
    
    if (blocked) {
      if (!blockedUsers.contains(widget.user.userId)) {
        blockedUsers.add(widget.user.userId);
      }
    } else {
      blockedUsers.remove(widget.user.userId);
    }
    
    await prefs.setStringList(_blockedUsersKey, blockedUsers);
  }

  // 加载关注状态
  Future<void> _loadFollowingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final followingUsers = prefs.getStringList(_followingUsersKey) ?? [];
    
    if (mounted) {
      setState(() {
        _isFollowing = followingUsers.contains(widget.user.userId);
      });
    }
  }

  // 保存关注状态
  Future<void> _saveFollowingStatus(bool following) async {
    final prefs = await SharedPreferences.getInstance();
    final followingUsers = prefs.getStringList(_followingUsersKey) ?? [];
    
    if (following) {
      if (!followingUsers.contains(widget.user.userId)) {
        followingUsers.add(widget.user.userId);
      }
    } else {
      followingUsers.remove(widget.user.userId);
    }
    
    await prefs.setStringList(_followingUsersKey, followingUsers);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // 顶部标题栏
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              expandedHeight: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                'User Profile',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                // 添加菜单按钮
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  color: Colors.grey[900],
                  onSelected: (value) {
                    switch (value) {
                      case 'report':
                        _showReportDialog();
                        break;
                      case 'block':
                        _showBlockDialog();
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem<String>(
                      value: 'report',
                      child: Row(
                        children: const [
                          Icon(Icons.report_problem_outlined, color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Report',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'block',
                      child: Row(
                        children: const [
                          Icon(Icons.block_outlined, color: Colors.white, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Block',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
              ],
            ),
            
            // 用户资料信息
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 拉黑提示横幅
                    if (_isBlocked)
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          border: Border.all(color: Colors.red.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.block,
                              color: Colors.red,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'You have blocked this user',
                                style: TextStyle(
                                  color: Colors.red.shade300,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: _showBlockDialog,
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                minimumSize: const Size(0, 32),
                                backgroundColor: Colors.red.withOpacity(0.1),
                              ),
                              child: const Text(
                                'Unblock',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                    // 用户头像和基本信息
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 用户头像
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryYellow,
                              width: 2,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: _buildUserImage(widget.user.icon),
                          ),
                        ),
                        
                        const SizedBox(width: 16),
                        
                        // 用户信息
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 用户名
                              Text(
                                '@${widget.user.name}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                              const SizedBox(height: 8),
                              
                              // 用户简介
                              Text(
                                widget.user.introduc,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                                maxLines: 5, // 增加最大行数以显示更多内容
                                overflow: TextOverflow.ellipsis,
                              ),
                              
                              const SizedBox(height: 12),
                              
                              // 关注按钮和聊天按钮
                              Row(
                                children: [
                                  // 使用新的关注按钮组件
                                  _buildFollowButton(),
                                  
                                  const SizedBox(width: 12),
                                  
                                  // 聊天按钮 - 仅在未拉黑时显示
                                  if (!_isBlocked)
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ChatPage(user: widget.user),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 32,
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryYellow.withOpacity(0.9),
                                          borderRadius: BorderRadius.circular(16),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.primaryYellow.withOpacity(0.3),
                                              blurRadius: 4,
                                              offset: const Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.chat_bubble_outline,
                                              color: Colors.black,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              'Chat',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // 用户统计信息
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildUserStat('Works', widget.user.works.length.toString()),
                        _buildUserStat('Following', _followingCount),
                        _buildUserStat('Followers', _followersCount),
                        _buildUserStat('Likes', _likesCount),
                      ],
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // 用户开场白
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Bio',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.user.openingremarks,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // 用户作品标题
                    const Row(
                      children: [
                        Text(
                          'Content',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Latest Uploads',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            // 用户作品网格
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              sliver: widget.user.works.isNotEmpty
                ? SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final work = widget.user.works[index];
                        return _buildWorkCard(work);
                      },
                      childCount: widget.user.works.length,
                    ),
                  )
                : SliverToBoxAdapter(
                    child: SizedBox(
                      height: 200,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.video_collection,
                              color: Colors.white60,
                              size: 48,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'No content yet',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 构建用户统计信息
  Widget _buildUserStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
  
  // 构建视频作品卡片
  Widget _buildWorkCard(WorkModel work) {
    return GestureDetector(
      onTap: () {
        // 显示作品详情弹窗
        _showWorkDetails(work);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white24,
            width: 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // 视频封面或占位图
            work.video.isNotEmpty
                ? VideoThumbnail(videoPath: work.video)
                : Container(
                    color: Colors.grey[800],
                    child: const Icon(
                      Icons.image,
                      color: Colors.white54,
                      size: 48,
                    ),
                  ),
            
            // 底部渐变和内容描述
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
                child: Text(
                  work.content,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            
            // 播放图标
            const Positioned(
              right: 8,
              top: 8,
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 显示作品详情
  void _showWorkDetails(WorkModel work) async {
    // 检查是否有足够的次数查看用户作品
    final hasWorkQuota = await _checkWorkViewQuota();
    if (!hasWorkQuota) {
      return;
    }
    
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 顶部把手和关闭按钮
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      width: 40,
                      height: 40,
                     
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 12,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              
              // 使用Expanded和SingleChildScrollView包裹内容
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 视频预览
                      AspectRatio(
                        aspectRatio: 9 / 16,
                        child: Container(
                          color: Colors.black,
                          child: work.video.isNotEmpty
                              ? VideoDetailPlayer(videoPath: work.video)
                              : Center(
                                  child: Icon(
                                    Icons.videocam_off,
                                    color: Colors.white38,
                                    size: 48,
                                  ),
                                ),
                        ),
                      ),
                      
                      // 作品内容
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 作者信息
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: _getUserImage(widget.user.icon),
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
                            
                            const SizedBox(height: 16),
                            
                            // 作品描述
                            Text(
                              work.content,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
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
        );
      },
    );
  }
  
  // 检查是否有足够次数查看用户作品
  Future<bool> _checkWorkViewQuota() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值为10次
    if (!prefs.containsKey(AppPrefs.videoQuotaKey)) {
      await prefs.setInt(AppPrefs.videoQuotaKey, 10);
      // 减少一次次数
      await _decreaseWorkViewQuota();
      return true;
    }
    
    final videoQuota = prefs.getInt(AppPrefs.videoQuotaKey) ?? 0;
    
    if (videoQuota <= 0) {
      // 显示配额不足对话框
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Quota Required'),
          content: const Text(
            'You need "View user works" quota to view this content. Would you like to purchase some?'
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // 跳转到购买页面
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InAppPurchasesPage(),
                  ),
                );
              },
              child: const Text('Purchase'),
            ),
          ],
        ),
      );
      return false;
    }
    
    // 减少一次次数
    await _decreaseWorkViewQuota();
    return true;
  }
  
  // 减少查看用户作品的次数
  Future<void> _decreaseWorkViewQuota() async {
    final prefs = await SharedPreferences.getInstance();
    final videoQuota = prefs.getInt(AppPrefs.videoQuotaKey) ?? 0;
    
    if (videoQuota > 0) {
      await prefs.setInt(AppPrefs.videoQuotaKey, videoQuota - 1);
    }
  }
  
  // 获取用户头像
  ImageProvider _getUserImage(String imagePath) {
    if (imagePath.startsWith('assets/')) {
      return AssetImage(imagePath);
    }
    
    // 使用默认占位图
    return const AssetImage('assets/images/boom_homebg.png');
  }
  
  // 加载用户头像的方法
  Widget _buildUserImage(String imagePath) {
    // 检查是否使用asset路径
    if (imagePath.startsWith('assets/')) {
      return Image.asset(
        imagePath,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          developer.log('Unable to load image: $imagePath, error: $error');
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

  // 显示举报对话框
  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],
          title: const Text(
            'Report User',
            style: TextStyle(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.warning_outlined, color: Colors.white70),
                title: const Text('Inappropriate Content', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  _submitReport('inappropriate');
                },
              ),
              ListTile(
                leading: const Icon(Icons.copyright_outlined, color: Colors.white70),
                title: const Text('Copyright Infringement', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  _submitReport('copyright');
                },
              ),
              ListTile(
                leading: const Icon(Icons.dangerous_outlined, color: Colors.white70),
                title: const Text('Harmful Content', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  _submitReport('harmful');
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel', style: TextStyle(color: AppColors.primaryYellow)),
            ),
          ],
        );
      },
    );
  }

  // 修改拉黑对话框方法
  void _showBlockDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],
          title: Text(
            _isBlocked ? 'Unblock User' : 'Block User',
            style: const TextStyle(color: Colors.white),
          ),
          content: Text(
            _isBlocked
                ? 'Are you sure you want to unblock ${widget.user.name}?'
                : 'Are you sure you want to block ${widget.user.name}? You won\'t be able to chat with them.',
            style: const TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel', style: TextStyle(color: AppColors.primaryYellow)),
            ),
            TextButton(
              onPressed: () async {
                final newBlockedStatus = !_isBlocked;
                await _saveBlockedStatus(newBlockedStatus);
                
                setState(() {
                  _isBlocked = newBlockedStatus;
                  if (_isBlocked && _isFollowing) {
                    _isFollowing = false;
                  }
                });
                
                if (mounted) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(newBlockedStatus 
                          ? '${widget.user.name} has been blocked'
                          : '${widget.user.name} has been unblocked'
                      ),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () async {
                          await _saveBlockedStatus(!newBlockedStatus);
                          setState(() {
                            _isBlocked = !newBlockedStatus;
                          });
                        },
                      ),
                    ),
                  );
                }
              },
              child: Text(
                _isBlocked ? 'Unblock' : 'Block',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  // 提交举报
  void _submitReport(String reason) {
    // TODO: 实现举报逻辑
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Report submitted successfully'),
      ),
    );
  }

  // 修改关注按钮的点击处理
  void _toggleFollow() async {
    if (!_isBlocked) {
      final newFollowingStatus = !_isFollowing;
      await _saveFollowingStatus(newFollowingStatus);
      
      setState(() {
        _isFollowing = newFollowingStatus;
      });
      
      // 显示操作提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              newFollowingStatus 
                  ? 'Following ${widget.user.name}'
                  : 'Unfollowed ${widget.user.name}'
            ),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () async {
                await _saveFollowingStatus(!newFollowingStatus);
                setState(() {
                  _isFollowing = !newFollowingStatus;
                });
              },
            ),
          ),
        );
      }
    }
  }

  // 修改关注按钮部分的代码
  Widget _buildFollowButton() {
    return Expanded(
      child: GestureDetector(
        onTap: _toggleFollow,
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            color: _isFollowing ? Colors.white24 : AppColors.primaryYellow,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              _isFollowing ? 'Following' : 'Follow',
              style: TextStyle(
                color: _isFollowing ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 检查是否有查看用户资料的次数
  Future<void> _checkQuota() async {
    // 如果已经通过服务检查了配额，则不需要再次检查
    if (_hasQuotaCheck || widget.hasCheckedQuota) {
      _hasQuotaCheck = true;
      return;
    }
    
    _hasQuotaCheck = true;
    
    // 查询配额
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值为10次
    if (!prefs.containsKey(AppPrefs.voiceQuotaKey)) {
      await prefs.setInt(AppPrefs.voiceQuotaKey, 10);
      // 在这里消耗一次次数，因为是直接访问的
      await UserProfileService.decreaseViewProfileQuota();
      return;
    }
    
    final hasQuota = await UserProfileService.hasViewProfileQuota();
    
    if (!hasQuota && mounted) {
      // 没有足够的查看配额，返回并显示购买对话框
      Navigator.of(context).pop();
      
      // 显示配额不足对话框
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Quota Required'),
          content: const Text(
            'You need "View user information" quota to view this profile. Would you like to purchase some?'
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // 跳转到购买页面
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InAppPurchasesPage(),
                  ),
                );
              },
              child: const Text('Purchase'),
            ),
          ],
        ),
      );
    } else if (hasQuota) {
      // 有足够的查看配额，减少一次（仅当直接访问页面时）
      await UserProfileService.decreaseViewProfileQuota();
    }
  }
}

// 视频详情播放器
class VideoDetailPlayer extends StatefulWidget {
  final String videoPath;
  
  const VideoDetailPlayer({
    required this.videoPath,
    Key? key,
  }) : super(key: key);
  
  @override
  State<VideoDetailPlayer> createState() => _VideoDetailPlayerState();
}

class _VideoDetailPlayerState extends State<VideoDetailPlayer> with WidgetsBindingObserver {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;
  bool _wasPlayingBeforeBackground = false;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeController();
  }
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_controller == null || !_isInitialized) return;
    
    if (state == AppLifecycleState.paused) {
      // 应用进入后台，记录当前播放状态
      _wasPlayingBeforeBackground = _controller!.value.isPlaying;
      if (_wasPlayingBeforeBackground) {
        _controller!.pause();
      }
    } else if (state == AppLifecycleState.resumed) {
      // 应用回到前台，不自动恢复播放状态
      // 即使之前是在播放的状态，也不自动播放
      setState(() {
        _isPlaying = false;
      });
    }
  }
  
  void _initializeController() {
    try {
      if (widget.videoPath.startsWith('assets/')) {
        _controller = VideoPlayerController.asset(widget.videoPath);
      } else if (widget.videoPath.startsWith('http')) {
        _controller = VideoPlayerController.network(widget.videoPath);
      } else {
        // 使用默认视频
        _controller = VideoPlayerController.network(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
        );
      }
      
      _controller!.initialize().then((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
            // 自动开始播放
            _controller!.play();
            _isPlaying = true;
            // 循环播放
            _controller!.setLooping(true);
          });
        }
      }).catchError((error) {
        developer.log('Video player initialization error: $error');
      });
    } catch (e) {
      developer.log('Video controller initialization error: $e');
    }
  }
  
  void _togglePlay() {
    if (_controller != null && _isInitialized) {
      setState(() {
        if (_isPlaying) {
          _controller!.pause();
        } else {
          _controller!.play();
        }
        _isPlaying = !_isPlaying;
      });
    }
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    if (_isInitialized && _controller != null) {
      return GestureDetector(
        onTap: _togglePlay,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: VideoPlayer(_controller!),
            ),
            if (!_isPlaying)
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ),
              ),
          ],
        ),
      );
    } else {
      // 加载中
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryYellow,
        ),
      );
    }
  }
}

// 视频缩略图组件
class VideoThumbnail extends StatefulWidget {
  final String videoPath;
  
  const VideoThumbnail({
    required this.videoPath,
    Key? key,
  }) : super(key: key);
  
  @override
  State<VideoThumbnail> createState() => _VideoThumbnailState();
}

class _VideoThumbnailState extends State<VideoThumbnail> with WidgetsBindingObserver {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeController();
  }
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 缩略图不需要播放，所以主要是确保资源不被意外播放
    if (_controller == null || !_isInitialized) return;
    
    if (state == AppLifecycleState.resumed) {
      // 应用回到前台，确保缩略图不会开始播放
      if (_controller!.value.isPlaying) {
        _controller!.pause();
      }
    }
  }
  
  void _initializeController() {
    try {
      if (widget.videoPath.startsWith('assets/')) {
        _controller = VideoPlayerController.asset(widget.videoPath);
      } else if (widget.videoPath.startsWith('http')) {
        _controller = VideoPlayerController.network(widget.videoPath);
      } else {
        // 使用默认视频
        _controller = VideoPlayerController.network(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
        );
      }
      
      _controller!.initialize().then((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
            // 跳转到视频的中间帧作为封面
            _controller!.seekTo(_controller!.value.duration * 0.5);
            // 确保不会自动播放
            _controller!.pause();
          });
        }
      }).catchError((error) {
        developer.log('Thumbnail initialization error: $error');
      });
    } catch (e) {
      developer.log('Video controller initialization error: $e');
    }
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    if (_isInitialized && _controller != null) {
      return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller!.value.size.width,
          height: _controller!.value.size.height,
          child: VideoPlayer(_controller!),
        ),
      );
    } else {
      // 加载中或出错时显示占位图
      return Container(
        color: Colors.black,
        child: const Center(
          child: Icon(
            Icons.video_file,
            color: Colors.white54,
            size: 48,
          ),
        ),
      );
    }
  }
} 