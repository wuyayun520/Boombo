import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_page.dart';
import 'messages_page.dart';
import 'live_page.dart';
import 'profile_page.dart';
import 'services/video_service.dart';

// Define tab bar icons directly
const String tabHomeNormal = 'assets/images/tabnor/boom_tab_1_nor.png';
const String tabHomeSelected = 'assets/images/tabpre/boom_tab_1_pre.png';
const String tabMessagesNormal = 'assets/images/tabnor/boom_tab_2_nor.png';
const String tabMessagesSelected = 'assets/images/tabpre/boom_tab_2_pre.png';
const String tabLiveNormal = 'assets/images/tabnor/boom_tab_3_nor.png';
const String tabLiveSelected = 'assets/images/tabpre/boom_tab_3_pre.png';
const String tabProfileNormal = 'assets/images/tabnor/boom_tab_4_nor.png';
const String tabProfileSelected = 'assets/images/tabpre/boom_tab_4_pre.png';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with AutomaticKeepAliveClientMixin<MainApp> {
  int _currentIndex = 1;
  final VideoService _videoService = VideoService();
  
  @override
  bool get wantKeepAlive => true;
  
  final List<Widget> _pages = [
    const HomePage(),
    const MessagesPage(),
    const LivePage(),
    const ProfilePage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: [
          // Current page
          IndexedStack(
            index: _currentIndex,
            children: _pages,
          ),
          
          // Custom floating bottom navigation bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.tabBarBackground,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTabItem(0, tabHomeNormal, tabHomeSelected),
                    _buildTabItem(1, tabMessagesNormal, tabMessagesSelected),
                    _buildTabItem(2, tabLiveNormal, tabLiveSelected),
                    _buildTabItem(3, tabProfileNormal, tabProfileSelected),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildTabItem(int index, String normalIcon, String selectedIcon) {
    final bool isSelected = _currentIndex == index;
    
    return GestureDetector(
      onTap: () {
        if (_currentIndex != index) {
          if (_currentIndex == 1) {
            _videoService.clearActivePlayer();
          }
          
        setState(() {
          _currentIndex = index;
        });
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Image.asset(
          isSelected ? selectedIcon : normalIcon,
          width: 30,
          height: 30,
          color: isSelected ? AppColors.primaryYellow : AppColors.white,
          errorBuilder: (context, error, stackTrace) {
            // Fallback to using icons if the image can't be loaded
            IconData iconData;
            switch(index) {
              case 0:
                iconData = Icons.home;
                break;
              case 1:
                iconData = Icons.message;
                break;
              case 2:
                iconData = Icons.live_tv;
                break;
              case 3:
                iconData = Icons.person;
                break;
              default:
                iconData = Icons.circle;
            }
            return Icon(
              iconData,
              color: isSelected ? AppColors.primaryYellow : AppColors.white,
              size: 30,
            );
          },
        ),
      ),
    );
  }
} 