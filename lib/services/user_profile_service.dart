import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';
import '../in_app_purchases_page.dart';
import '../models/user_model.dart';
import '../user_profile_page.dart';

class UserProfileService {
  // Check if user has available quota to view profile
  static Future<bool> hasViewProfileQuota() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值为10次
    if (!prefs.containsKey(AppPrefs.voiceQuotaKey)) {
      await prefs.setInt(AppPrefs.voiceQuotaKey, 10);
      return true;
    }
    
    final voiceQuota = prefs.getInt(AppPrefs.voiceQuotaKey) ?? 0;
    return voiceQuota > 0;
  }
  
  // Decrease quota when viewing a profile
  static Future<void> decreaseViewProfileQuota() async {
    final prefs = await SharedPreferences.getInstance();
    final voiceQuota = prefs.getInt(AppPrefs.voiceQuotaKey) ?? 0;
    
    if (voiceQuota > 0) {
      await prefs.setInt(AppPrefs.voiceQuotaKey, voiceQuota - 1);
    }
  }
  
  // Navigate to user profile or purchase page based on quota
  static Future<void> navigateToUserProfile(BuildContext context, UserModel user) async {
    final hasQuota = await hasViewProfileQuota();
    
    if (hasQuota) {
      // Decrease quota
      await decreaseViewProfileQuota();
      
      // Navigate to profile
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserProfilePage(
            user: user,
            hasCheckedQuota: true,
          ),
        ),
      );
    } else {
      // Show dialog about insufficient quota
      showDialog(
        context: context,
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
                // Navigate to purchase page
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
    }
  }
} 