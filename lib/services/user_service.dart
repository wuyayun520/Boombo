import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user_model.dart';
import 'dart:developer' as developer;

class UserService {
  static Future<List<UserModel>> loadUsers() async {
    try {
      developer.log('开始加载用户数据');
      // 从assets中加载JSON文件
      final String jsonString = await rootBundle.loadString('assets/json/rootuser.json');
      developer.log('JSON文件加载成功，长度: ${jsonString.length}');
      
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      developer.log('JSON解析成功');
      
      if (jsonData.containsKey('allUserData')) {
        final List<dynamic> usersJson = jsonData['allUserData'];
        developer.log('找到用户数据，共 ${usersJson.length} 个用户');
        
        List<UserModel> result = usersJson.map((json) => UserModel.fromJson(json)).toList();
        
        // 打印每个用户的图片路径
        for (var user in result) {
          developer.log('用户 ${user.name} 的图片路径: ${user.icon}, ${user.userprofile}');
        }
        
        return result;
      } else {
        developer.log('Error: JSON does not contain allUserData key');
        return [];
      }
    } catch (e) {
      developer.log('Error loading users: $e');
      return [];
    }
  }
} 