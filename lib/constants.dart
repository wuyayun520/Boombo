import 'package:flutter/material.dart';

class AppColors {
  // Main theme color
  static const Color primaryYellow = Color(0xFFFFED36);
  
  // Other color constants
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.grey;
  static const Color background = Colors.white;
  static const Color darkBackground = Colors.black;
  static const Color white = Colors.white;
  static const Color tabBarBackground = Color(0x99333333);
  
  // Purchase page theme color
  static const Color purchaseTheme = Color(0xFF5E60CE);
}

class AppStrings {
  // App name
  static const String appName = 'Boombo';
  
  // Welcome section
  static const String welcome = 'Welcome to Boombo';
  static const String welcomeSubtitle = 'Your ultimate app for everything you need';
  static const String getStarted = 'Get Started';
  
  // Features section
  static const String features = 'Features';
  
  // Feature cards
  static const String shopping = 'Shopping';
  static const String shoppingDesc = 'Shop from our wide range of products';
  
  static const String delivery = 'Fast Delivery';
  static const String deliveryDesc = 'Get your orders delivered quickly';
  
  static const String payments = 'Secure Payments';
  static const String paymentsDesc = 'Pay safely with multiple options';
  
  static const String support = '24/7 Support';
  static const String supportDesc = 'Get help whenever you need it';
  
  // Call to action
  static const String readyToStart = 'Ready to start?';
  static const String signUpNow = 'Sign Up Now';
  
  // Login page
  static const String enterApp = 'Enter APP';
  static const String termsAgree = 'I have read and agree ';
  static const String termsOfService = 'Terms of Service';
  static const String and = ' and ';
  static const String privacyPolicy = 'Privacy Policy';
  
  // Tab bar
  static const String home = 'Home';
  static const String messages = 'Messages';
  static const String live = 'Live';
  static const String profile = 'Me';
  
  // Subscription features
  static const String unlimitedBrowsing = 'Unlimited browsing of works';
  static const String noAds = 'Eliminate in-app advertising';
  static const String unlimitedAvatarChanges = 'Unlimited avatar changes';
  static const String subscriptionDisclaimer = 'Subscription will automatically renew unless canceled at least 24 hours before the end of the current period. You can manage your subscriptions in your account settings.';
}

class AppAssets {
  // Login page assets
  static const String loginBackground = 'assets/images/boom_loginbg.png';
  static const String loginLogo = 'assets/images/boom_login_logo.png';
  
  // Home page assets
  static const String homeBackground = 'assets/images/boom_homebg.png';
  
  // Tab bar icons
  static const String homeNormal = 'assets/images/tabnor/boom_tab_1_nor.png';
  static const String homeSelected = 'assets/images/tabpre/boom_tab_1_pre.png';
  static const String messagesNormal = 'assets/images/tabnor/boom_tab_2_nor.png';
  static const String messagesSelected = 'assets/images/tabpre/boom_tab_2_pre.png';
  static const String liveNormal = 'assets/images/tabnor/boom_tab_3_nor.png';
  static const String liveSelected = 'assets/images/tabpre/boom_tab_3_pre.png';
  static const String profileNormal = 'assets/images/tabnor/boom_tab_4_nor.png';
  static const String profileSelected = 'assets/images/tabpre/boom_tab_4_pre.png';
} 

class IAPProducts {
  // Text messaging products
  static const String text5 = 'Boombo1_5';
  static const String text15 = 'Boombo1_15';
  static const String text19 = 'Boombo1_19';
  
  // Picture messaging products
  static const String picture6 = 'Boombo2_6';
  static const String picture19 = 'Boombo2_19';
  static const String picture29 = 'Boombo2_29';
  
  // Voice messaging products
  static const String voice8 = 'Boombo3_8';
  static const String voice19 = 'Boombo3_19';
  static const String voice39 = 'Boombo3_39';
  
  // Video calling products
  static const String video8 = 'Boombo4_8';
  static const String video19 = 'Boombo4_19';
  static const String video39 = 'Boombo4_39';
  
  // Subscription products
  static const String monthlySubscription = 'BoomboSub1_19';
  static const String quarterlySubscription = 'BoomboSub2_29';
  static const String yearlySubscription = 'BoomboSub3_69';
  
  // Get all product IDs as a set
  static Set<String> get allProductIds => {
    text5, text15, text19,
    picture6, picture19, picture29,
    voice8, voice19, voice39,
    video8, video19, video39,
    monthlySubscription, quarterlySubscription, yearlySubscription,
  };
  
  // Feature types
  static const String featureText = 'sendtext';
  static const String featurePicture = 'sendpictures';
  static const String featureVoice = 'sendvoicemessages';
  static const String featureVideo = 'makevideocalls';
}

class AppPrefs {
  // IAP balance storage keys
  static const String textQuotaKey = 'textQuota';
  static const String pictureQuotaKey = 'pictureQuota';
  static const String voiceQuotaKey = 'voiceQuota';
  static const String videoQuotaKey = 'videoQuota';
  static const String isSubscribedKey = 'isSubscribed';
  static const String subscriptionTypeKey = 'subscriptionType';
  static const String subscriptionExpiryKey = 'subscriptionExpiry';
} 