import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import '../models/user_model.dart';
import '../constants.dart';

// Export the VideoPlayerManager class
export 'share_page.dart' show VideoPlayerManager;

class VideoPlayerManager {
  static final VideoPlayerManager _instance = VideoPlayerManager._internal();
  VideoPlayerController? _activeController;
  
  factory VideoPlayerManager() {
    return _instance;
  }
  
  VideoPlayerManager._internal();
  
  VideoPlayerController? get activeController => _activeController;
  
  void setActiveController(VideoPlayerController controller) {
    if (_activeController != controller) {
      _activeController?.pause();
      _activeController = controller;
      _activeController?.play();
    }
  }
  
  void pauseAll() {
    _activeController?.pause();
  }
  
  static void globalPauseAll() {
    VideoPlayerManager()._activeController?.pause();
  }
}

class SharePage extends StatefulWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();
  final List<UserModel> _users = [];
  int _currentUserIndex = 0;
  int _currentPageIndex = 0;
  bool _isLoading = true;
  final VideoPlayerManager _videoManager = VideoPlayerManager();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check if this page is currently visible
    final route = ModalRoute.of(context);
    if (route != null) {
      route.addScopedWillPopCallback(() async {
        _videoManager.pauseAll();
        return true;
      });
    }
  }

  @override
  void dispose() {
    _videoManager.pauseAll();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _loadUserData() async {
    try {
      final String response = await rootBundle.loadString('assets/json/rootuser.json');
      final data = await json.decode(response);
      
      if (data['allUserData'] != null) {
        final List<dynamic> userList = data['allUserData'];
        setState(() {
          _users.clear();
          _users.addAll(userList.map((user) => UserModel.fromJson(user)).toList());
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading user data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _onUserTap(int index) {
    setState(() {
      _currentUserIndex = index;
    });
    _pageController.jumpToPage(0); // Reset to first work when changing user
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_users.isEmpty) {
      return const Center(child: Text('No user data available'));
    }

    final UserModel currentUser = _users[_currentUserIndex];
    final List<WorkModel> works = currentUser.works;
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            _buildUserAvatarList(),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                onPageChanged: _onPageChanged,
                itemCount: works.length,
                itemBuilder: (context, index) {
                  return _buildContentCard(works[index], index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserAvatarList() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.black.withOpacity(0.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _users.length,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (context, index) {
          final user = _users[index];
          final bool isSelected = index == _currentUserIndex;
          
          return GestureDetector(
            onTap: () => _onUserTap(index),
            child: Container(
              width: 70,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: isSelected 
                    ? Border.all(color: AppColors.primaryYellow, width: 2)
                    : null,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
                    child: Image.asset(
                      user.icon,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback to a placeholder if asset loading fails
                        return Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[800],
                          child: const Icon(Icons.person, color: Colors.white),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.name.split(' ')[0], // Display only first name
                    style: TextStyle(
                      color: isSelected ? AppColors.primaryYellow : Colors.white,
                      fontSize: 12,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContentCard(WorkModel work, int index) {
    return VideoContentCard(
      work: work,
      user: _users[_currentUserIndex],
      isActive: index == _currentPageIndex,
      videoManager: _videoManager,
    );
  }
}

class VideoContentCard extends StatefulWidget {
  final WorkModel work;
  final UserModel user;
  final bool isActive;
  final VideoPlayerManager videoManager;

  const VideoContentCard({
    Key? key,
    required this.work,
    required this.user,
    required this.isActive,
    required this.videoManager,
  }) : super(key: key);

  @override
  _VideoContentCardState createState() => _VideoContentCardState();
}

class _VideoContentCardState extends State<VideoContentCard> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;
  bool _liked = false;
  int _likeCount = 0;
  int _commentCount = 0;
  int _shareCount = 0;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
    
    // Generate random numbers for likes, comments and shares
    _likeCount = 100 + (DateTime.now().millisecond % 900);
    _commentCount = 10 + (DateTime.now().millisecond % 100);
    _shareCount = 5 + (DateTime.now().millisecond % 50);
  }
  
  @override
  void didUpdateWidget(VideoContentCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    if (widget.isActive && !oldWidget.isActive) {
      _playVideo();
    } else if (!widget.isActive && oldWidget.isActive) {
      _pauseVideo();
    }
  }

  Future<void> _initializeVideoPlayer() async {
    _controller = VideoPlayerController.asset(widget.work.video);
    
    try {
      await _controller.initialize();
      
      setState(() {
        _isInitialized = true;
      });
      
      if (widget.isActive) {
        _playVideo();
      }
      
      // Loop the video
      _controller.setLooping(true);
    } catch (e) {
      print('Error initializing video player: $e');
    }
  }
  
  void _playVideo() {
    if (_isInitialized) {
      widget.videoManager.setActiveController(_controller);
      setState(() {
        _isPlaying = true;
      });
    }
  }
  
  void _pauseVideo() {
    if (_isInitialized) {
      _controller.pause();
      setState(() {
        _isPlaying = false;
      });
    }
  }
  
  void _togglePlayPause() {
    if (_isPlaying) {
      _pauseVideo();
    } else {
      _playVideo();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Video player
        _isInitialized
            ? GestureDetector(
                onTap: _togglePlayPause,
                child: VideoPlayer(_controller),
              )
            : const Center(child: CircularProgressIndicator(color: AppColors.primaryYellow)),
        
        // Play/pause overlay
        if (_isInitialized && !_isPlaying)
          Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        
        // Bottom gradient overlay
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        
        // User info and content
        Positioned(
          bottom: 20,
          left: 16,
          right: 70, // Leave space for action buttons
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      widget.user.icon,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback to a placeholder if asset loading fails
                        return Container(
                          width: 40,
                          height: 40,
                          color: Colors.grey[800],
                          child: const Icon(Icons.person, color: Colors.white),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.user.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.primaryYellow),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                        color: AppColors.primaryYellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                widget.work.content,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        
        // Action buttons (like, comment, share)
        Positioned(
          right: 16,
          bottom: 20,
          child: Column(
            children: [
              // Like button
              _buildActionButton(
                icon: _liked ? Icons.favorite : Icons.favorite_border,
                count: _likeCount + (_liked ? 1 : 0),
                color: _liked ? Colors.red : Colors.white,
                onTap: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
              ),
              const SizedBox(height: 20),
              
              // Comment button
              _buildActionButton(
                icon: Icons.chat_bubble_outline,
                count: _commentCount,
                onTap: () {
                  // Show comment sheet
                  _showCommentSheet(context);
                },
              ),
              const SizedBox(height: 20),
              
              // Share button
              _buildActionButton(
                icon: Icons.share,
                count: _shareCount,
                onTap: () {
                  // Show share options
                  _showShareOptions(context);
                },
              ),
              const SizedBox(height: 20),
              
              // Spinning music icon
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryYellow,
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    widget.user.icon,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Fallback to a placeholder if asset loading fails
                      return Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey[800],
                        child: const Icon(Icons.music_note, color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // Video progress indicator
        if (_isInitialized)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                playedColor: AppColors.primaryYellow,
                bufferedColor: Colors.white30,
                backgroundColor: Colors.white10,
              ),
            ),
          ),
      ],
    );
  }
  
  Widget _buildActionButton({
    required IconData icon,
    required int count,
    Color color = Colors.white,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _formatCount(count),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
  
  String _formatCount(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    } else if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }
  
  void _showCommentSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black.withOpacity(0.8),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.8,
        expand: false,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  '$_commentCount Comments',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 5, // Sample comments
                    itemBuilder: (context, index) {
                      return _buildCommentItem(index);
                    },
                  ),
                ),
                const SizedBox(height: 8),
                // Comment input
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: 'Add a comment...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: AppColors.primaryYellow),
                        onPressed: () {
                          // Send comment
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  
  Widget _buildCommentItem(int index) {
    // Sample data, in a real app this would come from a database
    final List<String> userNames = [
      'Sarah J.', 'Mike T.', 'Elena D.', 'John S.', 'Taylor R.'
    ];
    final List<String> comments = [
      'Amazing performance! You\'re so talented!',
      'I never knew this instrument could sound so beautiful.',
      'Can you please do a tutorial on this?',
      'Been following your work for years, you keep getting better!',
      'This piece always gives me goosebumps, well done!'
    ];
    final List<String> times = [
      '2h ago', '5h ago', '1d ago', '2d ago', '1w ago'
    ];
    
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey[800],
            child: Text(
              userNames[index][0],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      userNames[index],
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      times[index],
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comments[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.favorite_border, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      '${12 + index * 7}',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Reply',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  void _showShareOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black.withOpacity(0.8),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Share to',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildShareOption(
                    icon: Icons.messenger_outline,
                    label: 'Messages',
                    color: Colors.blue,
                  ),
                  _buildShareOption(
                    icon: Icons.facebook,
                    label: 'Facebook',
                    color: Colors.indigo,
                  ),
                  _buildShareOption(
                    icon: Icons.telegram,
                    label: 'Telegram',
                    color: Colors.lightBlue,
                  ),
                  _buildShareOption(
                    icon: Icons.email_outlined,
                    label: 'Email',
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildShareOption(
                    icon: Icons.chat_bubble,
                    label: 'WhatsApp',
                    color: Colors.green,
                  ),
                  _buildShareOption(
                    icon: Icons.link,
                    label: 'Copy Link',
                    color: Colors.orange,
                  ),
                  _buildShareOption(
                    icon: Icons.more_horiz,
                    label: 'More',
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 60), // Empty space for alignment
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
  
  Widget _buildShareOption({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
} 