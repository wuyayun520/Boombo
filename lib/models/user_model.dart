import 'dart:convert';

class UserModel {
  final String userId;
  final String name;
  final String icon;
  final String iconbg;
  final String userprofile;
  final String introduc;
  final String openingremarks;
  final List<WorkModel> works;

  UserModel({
    required this.userId,
    required this.name,
    required this.icon,
    required this.iconbg,
    required this.userprofile,
    required this.introduc,
    required this.openingremarks,
    required this.works,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    List<WorkModel> worksList = [];
    
    if (json['work'] != null) {
      worksList = (json['work'] as List).map((work) => WorkModel.fromJson(work)).toList();
    }

    return UserModel(
      userId: json['userId'] ?? '',
      name: json['name'] ?? '',
      icon: json['icon'] ?? '',
      iconbg: json['iconbg'] ?? '',
      userprofile: json['userprofile'] ?? '',
      introduc: json['introduc'] ?? '',
      openingremarks: json['openingremarks'] ?? '',
      works: worksList,
    );
  }
}

class WorkModel {
  final String workId;
  final String content;
  final String video;

  WorkModel({
    required this.workId,
    required this.content,
    required this.video,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      workId: json['workId'] ?? '',
      content: json['content'] ?? '',
      video: json['video'] ?? '',
    );
  }
}

class UserDataService {
  static Future<List<UserModel>> loadUsers() async {
    try {
      // 在实际应用中，这里应该使用异步加载
      // 这里为了简化，我们假设数据已经加载
      return [];
    } catch (e) {
      print('Error loading user data: $e');
      return [];
    }
  }
} 