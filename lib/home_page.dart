import 'package:flutter/material.dart';
import 'constants.dart';
import 'models/user_model.dart';
import 'services/user_service.dart';
import 'dart:developer' as developer;
import 'services/video_service.dart';
import 'user_profile_page.dart';
import 'services/user_profile_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late Future<List<UserModel>> _usersFuture;
  int _currentIndex = 0;
  final VideoService _videoService = VideoService();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _usersFuture = UserService.loadUsers();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _videoService.clearActivePlayer();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _videoService.clearActivePlayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片铺满整个屏幕
          Positioned.fill(
            child: Image.asset(
              AppAssets.homeBackground,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                developer.log('Error loading background image: $error');
                return Container(color: Colors.black);
              },
            ),
          ),
          
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 16.0),
                  child: Text(
                    'Recommend',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: FutureBuilder<List<UserModel>>(
                    future: _usersFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator(color: AppColors.primaryYellow));
                      } else if (snapshot.hasError) {
                        developer.log('Error in FutureBuilder: ${snapshot.error}');
                        return Center(child: Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.white)));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        developer.log('No user data found, using mock data');
                        // 使用虚拟数据进行测试
                        List<UserModel> mockUsers = [
                          UserModel(
                            userId: '101',
                            name: 'Grace',
                            icon: 'assets/images/user/1/icon_1.jpg',
                            iconbg: 'assets/images/user/1/icon_2.jpg',
                            userprofile: 'assets/images/user/1/icon_3.jpg',
                            introduc: 'Professional singer with 10 years experience',
                            openingremarks: 'Music is my life!',
                            works: [
                              WorkModel(
                                workId: '1001',
                                content: 'Every time I sing, it\'s like embarking on a fantastic...',
                                video: 'assets/images/user/1/video1.mp4',
                              ),
                            ],
                          ),
                          UserModel(
                            userId: '102',
                            name: 'Michael',
                            icon: 'assets/images/user/2/icon_1.jpg',
                            iconbg: 'assets/images/user/2/icon_2.jpg',
                            userprofile: 'assets/images/user/2/icon_3.jpg',
                            introduc: 'Piano player with passion for classical music',
                            openingremarks: 'Let the music speak!',
                            works: [
                              WorkModel(
                                workId: '1002',
                                content: 'My fingers dance on the keys, creating melodies that speak...',
                                video: 'assets/images/user/2/video2.mp4',
                              ),
                            ],
                          ),
                        ];
                        return RecommendContent(users: mockUsers, currentIndex: _currentIndex, onPageChanged: _onPageChanged);
                      } else {
                        developer.log('Loaded ${snapshot.data!.length} users');
                        return RecommendContent(users: snapshot.data!, currentIndex: _currentIndex, onPageChanged: _onPageChanged);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _navigateToUserProfile(BuildContext context, UserModel user) {
    UserProfileService.navigateToUserProfile(context, user);
  }
}

class RecommendContent extends StatelessWidget {
  final List<UserModel> users;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const RecommendContent({
    required this.users,
    required this.currentIndex,
    required this.onPageChanged,
    Key? key,
  }) : super(key: key);

  void _navigateToUserProfile(BuildContext context, UserModel user) {
    UserProfileService.navigateToUserProfile(context, user);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 700,
        child: Stack(
          children: [
            // 中心圆形图片，显示当前用户头像，添加点击事件
            Positioned(
              top: 34,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () => _navigateToUserProfile(context, users[currentIndex]),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: _buildUserImage(users[currentIndex].icon),
                    ),
                  ),
                ),
              ),
            ),
            
            // 可滑动的内容卡片
            Positioned(
              top: 140,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: SizedBox(
                  height: 340,
                  child: PageView.builder(
                    controller: PageController(
                      initialPage: currentIndex,
                      viewportFraction: 0.65,
                    ),
                    onPageChanged: onPageChanged,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      final work = user.works.isNotEmpty ? user.works[0] : null;
                      
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: index == currentIndex ? 1.0 : 0.7,
                        child: AnimatedScale(
                          duration: const Duration(milliseconds: 300),
                          scale: index == currentIndex ? 1.0 : 0.85,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => _navigateToUserProfile(context, user),
                              child: SizedBox(
                                width: 225,
                                height: 300,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 15,
                                        offset: const Offset(0, 8),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        // 用户背景图片
                                        Positioned.fill(
                                          child: _buildUserImage(user.userprofile, boxFit: BoxFit.cover),
                                        ),
                                        
                                        // 添加水波纹效果
                                        Positioned.fill(
                                          child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              onTap: () => _navigateToUserProfile(context, user),
                                              splashColor: Colors.white.withOpacity(0.1),
                                              highlightColor: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        
                                        // 底部渐变和文字
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            padding: const EdgeInsets.all(16),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Colors.transparent,
                                                  Colors.black.withOpacity(0.85),
                                                ],
                                                stops: const [0.5, 1.0],
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  '@${user.name}',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                if (work != null)
                                                  Text(
                                                    user.introduc,
                                                    style: const TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 14,
                                                      height: 1.3,
                                                    ),
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // 统一处理图片加载的方法
  Widget _buildUserImage(String imagePath, {BoxFit boxFit = BoxFit.cover}) {
    developer.log('Loading image: $imagePath');
    
    // 使用网络图片测试
    if (imagePath.startsWith('assets/')) {
      return Image.asset(
        imagePath,
        fit: boxFit,
        errorBuilder: (context, error, stackTrace) {
          // 图片加载失败时显示占位符
          return Container(
            color: Colors.grey[800],
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.broken_image, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text(
                    'Image not found',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      // 使用临时测试图片
      return Image.network(
        'https://picsum.photos/225/300',
        fit: boxFit,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                : null,
              color: AppColors.primaryYellow,
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[800],
            child: const Center(
              child: Icon(Icons.broken_image, color: Colors.white, size: 40),
            ),
          );
        },
      );
    }
  }
}