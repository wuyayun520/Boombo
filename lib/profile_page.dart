import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'constants.dart';
import 'about_app_page.dart';
import 'terms_of_service_page.dart';
import 'privacy_policy_page.dart';
import 'in_app_purchases_page.dart';
import 'subscriptions_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'User Name';
  String? imagePath;
  final ImagePicker _picker = ImagePicker();
  bool _isVip = false;
  
  @override
  void initState() {
    super.initState();
    _loadUserData();
    _checkVipStatus();
  }
  
  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('userName') ?? 'User Name';
      imagePath = prefs.getString('userImage');
    });
  }
  
  Future<void> _saveUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', userName);
    if (imagePath != null) {
      await prefs.setString('userImage', imagePath!);
    }
  }
  
  Future<void> _checkVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isSubscribed = prefs.getBool(AppPrefs.isSubscribedKey) ?? false;
    final String? expiryDateStr = prefs.getString(AppPrefs.subscriptionExpiryKey);
    
    // 打印当前获取到的VIP信息
    print('Profile - 订阅状态: $isSubscribed, 到期时间: $expiryDateStr');
    
    bool subscriptionValid = isSubscribed;
    if (expiryDateStr != null) {
      final DateTime expiryDate = DateTime.parse(expiryDateStr);
      if (DateTime.now().isAfter(expiryDate)) {
        subscriptionValid = false;
        await prefs.setBool(AppPrefs.isSubscribedKey, false);
        print('Profile - 订阅已过期: ${DateTime.now()} > $expiryDate');
      } else {
        print('Profile - 订阅有效期至: $expiryDate');
      }
    }
    
    setState(() {
      _isVip = subscriptionValid;
    });
    
    print('Profile - 最终VIP状态: $_isVip');
  }
  
  Future<void> _showVipPromptDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
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
  
  Future<void> _handleAvatarTap() async {
    // 先重新检查VIP状态，确保状态是最新的
    await _checkVipStatus();
    print('Profile - 头像点击，当前VIP状态: $_isVip');
    
    if (_isVip) {
      await _pickImage();
    } else {
      await _showVipPromptDialog();
    }
  }
  
  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imagePath = image.path;
      });
      await _saveUserData();
    }
  }
  
  Future<void> _showEditNameDialog() async {
    TextEditingController controller = TextEditingController(text: userName);
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Name'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter your name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  userName = controller.text;
                });
                _saveUserData();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
  
  void _openInAppPurchases() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const InAppPurchasesPage(),
      ),
    );
  }
  
  void _openSubscriptions() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SubscriptionsPage(),
      ),
    );
  }
  
  Widget _buildProfileOption({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white70,
        size: 16,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              GestureDetector(
                onTap: _handleAvatarTap,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _isVip ? AppColors.primaryYellow : Colors.white54,
                          width: 3,
                        ),
                        image: imagePath != null
                            ? DecorationImage(
                                image: FileImage(File(imagePath!)),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: imagePath == null
                          ? const Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.white,
                            )
                          : null,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: _isVip ? AppColors.primaryYellow : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: _showEditNameDialog,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.edit,
                      color: AppColors.primaryYellow,
                      size: 18,
                    ),
                  ],
                ),
              ),
              if (_isVip)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primaryYellow,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.black, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'VIP',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 40),
              const Divider(color: Colors.white24),
              _buildProfileOption(
                title: 'In-App Purchases',
                icon: Icons.shopping_cart_outlined,
                onTap: _openInAppPurchases,
              ),
              const Divider(color: Colors.white24),
              _buildProfileOption(
                title: 'Subscriptions',
                icon: Icons.card_membership_outlined,
                onTap: _openSubscriptions,
              ),
              const Divider(color: Colors.white24),
              _buildProfileOption(
                title: 'About App',
                icon: Icons.info_outline,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutAppPage(),
                    ),
                  );
                },
              ),
              const Divider(color: Colors.white24),
              _buildProfileOption(
                title: 'Terms of Service',
                icon: Icons.description_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsOfServicePage(),
                    ),
                  );
                },
              ),
              const Divider(color: Colors.white24),
              _buildProfileOption(
                title: 'Privacy Policy',
                icon: Icons.privacy_tip_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
              const Divider(color: Colors.white24),
            ],
          ),
        ),
      ),
    );
  }
} 