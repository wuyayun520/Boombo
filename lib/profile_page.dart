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
  
  // 检查修改头像的次数配额
  Future<bool> _checkAvatarQuota() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值为10次
    if (!prefs.containsKey(AppPrefs.textQuotaKey)) {
      await prefs.setInt(AppPrefs.textQuotaKey, 10);
      // 减少一次次数
      await _decreaseAvatarQuota();
      return true;
    }
    
    final textQuota = prefs.getInt(AppPrefs.textQuotaKey) ?? 0;
    
    if (textQuota <= 0) {
      // 显示配额不足对话框
      _showQuotaRequiredDialog('Unlimited avatars');
      return false;
    }
    
    // 减少一次次数
    await _decreaseAvatarQuota();
    return true;
  }
  
  // 减少修改头像的次数
  Future<void> _decreaseAvatarQuota() async {
    final prefs = await SharedPreferences.getInstance();
    final textQuota = prefs.getInt(AppPrefs.textQuotaKey) ?? 0;
    
    if (textQuota > 0) {
      await prefs.setInt(AppPrefs.textQuotaKey, textQuota - 1);
    }
  }
  
  // 检查修改名称的次数配额
  Future<bool> _checkNameQuota() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值为10次
    if (!prefs.containsKey(AppPrefs.pictureQuotaKey)) {
      await prefs.setInt(AppPrefs.pictureQuotaKey, 10);
      // 减少一次次数
      await _decreaseNameQuota();
      return true;
    }
    
    final pictureQuota = prefs.getInt(AppPrefs.pictureQuotaKey) ?? 0;
    
    if (pictureQuota <= 0) {
      // 显示配额不足对话框
      _showQuotaRequiredDialog('Unrestricted name');
      return false;
    }
    
    // 减少一次次数
    await _decreaseNameQuota();
    return true;
  }
  
  // 减少修改名称的次数
  Future<void> _decreaseNameQuota() async {
    final prefs = await SharedPreferences.getInstance();
    final pictureQuota = prefs.getInt(AppPrefs.pictureQuotaKey) ?? 0;
    
    if (pictureQuota > 0) {
      await prefs.setInt(AppPrefs.pictureQuotaKey, pictureQuota - 1);
    }
  }
  
  // 显示配额不足对话框
  void _showQuotaRequiredDialog(String featureType) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Quota Required'),
        content: Text(
          'You need "$featureType" quota to use this feature. Would you like to purchase some?'
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
              _openInAppPurchases();
            },
            child: const Text('Purchase'),
          ),
        ],
      ),
    );
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
      // 检查是否有足够的头像修改次数
      final hasQuota = await _checkAvatarQuota();
      if (hasQuota) {
        await _pickImage();
      }
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
  
  Future<void> _handleNameEdit() async {
    // 先重新检查VIP状态，确保状态是最新的
    await _checkVipStatus();
    
    if (_isVip) {
      await _showEditNameDialog();
    } else {
      // 检查是否有足够的名称修改次数
      final hasQuota = await _checkNameQuota();
      if (hasQuota) {
        await _showEditNameDialog();
      }
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
  
  @override
  Widget build(BuildContext context) {
    // 获取屏幕大小以便于响应式设计
    final screenSize = MediaQuery.of(context).size;
    final isTablet = screenSize.width > 600; // iPad和其他平板通常宽度超过600
    
    // 获取底部安全区域高度，用于计算底部边距
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomNavBarHeight = 60.0; // 估计的底部导航栏高度

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        // 修改为bottom: false使内容可以延伸到底部安全区
        bottom: false,
        child: Center(
          child: SingleChildScrollView(
            // 添加内边距，确保内容不被底部导航栏遮挡
            padding: EdgeInsets.only(bottom: bottomNavBarHeight + bottomPadding),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isTablet ? 600 : double.infinity, // 在平板上限制最大宽度
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 32.0 : 16.0, // 平板上使用更大的边距
                ),
                child: Column(
                  children: [
                    // 减少顶部间距，使整体内容向上移动
                    SizedBox(height: isTablet ? 40 : 30), // 减少顶部间距
                    
                    // 头像部分 - 在平板上适当增大尺寸
                    GestureDetector(
                      onTap: _handleAvatarTap,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: isTablet ? 140 : 100, // 平板上使用更大的头像
                            height: isTablet ? 140 : 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: _isVip ? AppColors.primaryYellow : Colors.white54,
                                width: isTablet ? 4 : 3, // 平板上使用更粗的边框
                              ),
                              image: imagePath != null
                                  ? DecorationImage(
                                      image: FileImage(File(imagePath!)),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                            child: imagePath == null
                                ? Icon(
                                    Icons.person,
                                    size: isTablet ? 80 : 60, // 平板上使用更大的图标
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                          Container(
                            padding: EdgeInsets.all(isTablet ? 6 : 4), // 平板上使用更大的编辑图标
                            decoration: BoxDecoration(
                              color: _isVip ? AppColors.primaryYellow : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                              size: isTablet ? 24 : 18, // 平板上使用更大的图标
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: isTablet ? 20 : 12), // 减少此处间距
                    
                    // 用户名部分
                    GestureDetector(
                      onTap: _handleNameEdit,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            userName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isTablet ? 32 : 24, // 平板上使用更大的字体
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: isTablet ? 12 : 8), // 平板上使用更大的间距
                          Icon(
                            Icons.edit,
                            color: AppColors.primaryYellow,
                            size: isTablet ? 24 : 18, // 平板上使用更大的图标
                          ),
                        ],
                      ),
                    ),
                    
                    // VIP标签 - 减少顶部边距
                    if (_isVip)
                      Container(
                        margin: EdgeInsets.only(top: isTablet ? 8 : 6), // 减少此处边距
                        padding: EdgeInsets.symmetric(
                          horizontal: isTablet ? 18 : 12, 
                          vertical: isTablet ? 6 : 4
                        ), // 平板上使用更大的内边距
                        decoration: BoxDecoration(
                          color: AppColors.primaryYellow,
                          borderRadius: BorderRadius.circular(isTablet ? 20 : 16), // 平板上使用更大的圆角
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star, 
                              color: Colors.black, 
                              size: isTablet ? 20 : 16 // 平板上使用更大的图标
                            ),
                            SizedBox(width: isTablet ? 6 : 4), // 平板上使用更大的间距
                            Text(
                              'VIP',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: isTablet ? 18 : 14, // 平板上使用更大的字体
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                    SizedBox(height: isTablet ? 40 : 30), // 减少此处间距
                    
                    // 选项区域
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(isTablet ? 20 : 16), // 平板上使用更大的圆角
                      ),
                      child: Column(
                        children: [
                          const Divider(color: Colors.white24),
                          _buildProfileOption(
                            title: 'In-App Purchases',
                            icon: Icons.shopping_cart_outlined,
                            onTap: _openInAppPurchases,
                            isTablet: isTablet,
                          ),
                          const Divider(color: Colors.white24),
                          _buildProfileOption(
                            title: 'Subscriptions',
                            icon: Icons.card_membership_outlined,
                            onTap: _openSubscriptions,
                            isTablet: isTablet,
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
                            isTablet: isTablet,
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
                            isTablet: isTablet,
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
                            isTablet: isTablet,
                          ),
                          const Divider(color: Colors.white24),
                        ],
                      ),
                    ),
                    
                    // 底部填充空间 - 确保内容在导航栏之上
                    SizedBox(height: isTablet ? 30 : 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  // 修改选项构建方法，添加平板适配
  Widget _buildProfileOption({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    required bool isTablet,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: isTablet ? 24.0 : 16.0,
        vertical: isTablet ? 2.0 : 0.0, // 减少垂直内边距
      ), 
      minLeadingWidth: 20, // 减少前导图标宽度
      minVerticalPadding: 0, // 最小垂直内边距降低
      visualDensity: VisualDensity.compact, // 使用更紧凑的视觉密度
      leading: Icon(
        icon, 
        color: Colors.white70,
        size: isTablet ? 24 : 22, // 稍微缩小图标尺寸
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: isTablet ? 18 : 15, // 稍微减小字体大小
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white70,
        size: isTablet ? 16 : 14, // 缩小箭头图标尺寸
      ),
      onTap: onTap,
    );
  }
} 