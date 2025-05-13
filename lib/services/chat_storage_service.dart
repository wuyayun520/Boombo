import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../chat_page.dart';
import 'package:path/path.dart' as path;

class ChatStorageService {
  static const String _messagesKey = 'chat_messages';
  static const String _mediaFolderName = 'chat_media';

  // 保存聊天消息列表到本地存储
  static Future<bool> saveMessages(List<ChatMessage> messages, String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final messagesMap = messages.map((message) => _serializeMessage(message)).toList();
      final jsonString = jsonEncode(messagesMap);
      return await prefs.setString('${_messagesKey}_$userId', jsonString);
    } catch (e) {
      debugPrint('Error saving messages: $e');
      return false;
    }
  }

  // 从本地存储加载聊天消息列表
  static Future<List<ChatMessage>> loadMessages(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString('${_messagesKey}_$userId');
      if (jsonString == null) return [];

      final List<dynamic> messagesMap = jsonDecode(jsonString);
      final messages = await Future.wait(
        messagesMap.map((messageMap) => _deserializeMessage(messageMap)).toList(),
      );
      return messages;
    } catch (e) {
      debugPrint('Error loading messages: $e');
      return [];
    }
  }

  // 获取媒体文件存储目录
  static Future<Directory> getMediaDirectory() async {
    final appDir = await getApplicationDocumentsDirectory();
    final mediaDir = Directory('${appDir.path}/$_mediaFolderName');
    if (!await mediaDir.exists()) {
      await mediaDir.create(recursive: true);
    }
    return mediaDir;
  }

  // 保存媒体文件到应用文档目录
  static Future<String?> saveMediaFile(File sourceFile, ChatMessageType type) async {
    try {
      // 使用应用文档目录而不是临时目录，确保文件持久存储
      final mediaDir = await getMediaDirectory();
      
      // 使用更具鲁棒性的文件命名方式，方便后续查找
      String fileName;
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      
      if (type == ChatMessageType.voice) {
        // 为语音文件使用特殊命名方式，包含record_time标识
        final parts = path.basenameWithoutExtension(sourceFile.path).split('_');
        final recordTime = parts.isNotEmpty ? parts.last : null;
        if (recordTime != null && recordTime.isNotEmpty) {
          fileName = '${timestamp}_voice_$recordTime.m4a';
        } else {
          fileName = '${timestamp}_voice_${timestamp}.m4a';
        }
      } else {
        // 图片或其他类型文件
        fileName = '${timestamp}_${path.basename(sourceFile.path)}';
      }
      
      final targetPath = '${mediaDir.path}/$fileName';
      
      // 检查源文件是否存在
      if (!await sourceFile.exists()) {
        debugPrint('Source file does not exist: ${sourceFile.path}');
        return null;
      }

      // 复制文件到应用文档目录
      final File newFile = await sourceFile.copy(targetPath);
      
      // 验证文件是否成功复制
      if (await newFile.exists()) {
        final fileSize = await newFile.length();
        debugPrint('Media file saved successfully: $targetPath (${fileSize} bytes)');
        return newFile.path;
      } else {
        debugPrint('Failed to save media file: file does not exist after copy');
        return null;
      }
    } catch (e) {
      debugPrint('Error saving media file: $e');
      return null;
    }
  }

  // 序列化消息对象为Map
  static Map<String, dynamic> _serializeMessage(ChatMessage message) {
    return {
      'id': message.id,
      'content': message.content,
      'type': message.type.index,
      'isMe': message.isMe,
      'timestamp': message.timestamp.millisecondsSinceEpoch,
      'duration': message.duration?.inMilliseconds,
      'imagePath': message.imagePath,
      'voicePath': message.voicePath,
    };
  }

  // 反序列化Map为消息对象
  static Future<ChatMessage> _deserializeMessage(Map<String, dynamic> map) async {
    final type = ChatMessageType.values[map['type']];
    String? imagePath = map['imagePath'];
    String? voicePath = map['voicePath'];

    // 确保媒体文件路径有效
    if (type == ChatMessageType.image && imagePath != null) {
      final file = File(imagePath);
      if (!await file.exists()) {
        debugPrint('图片文件不存在: $imagePath');
        imagePath = null; // 文件不存在，设为null
      } else {
        // 确认文件大小
        final size = await file.length();
        if (size <= 0) {
          debugPrint('图片文件为空: $imagePath');
          imagePath = null;
        } else {
          debugPrint('成功加载图片文件: $imagePath (${size} 字节)');
        }
      }
    }
    
    if (type == ChatMessageType.voice && voicePath != null) {
      final file = File(voicePath);
      if (!await file.exists()) {
        debugPrint('语音文件不存在: $voicePath');
        voicePath = null; // 文件不存在，设为null
      } else {
        // 确认文件大小
        final size = await file.length();
        if (size <= 0) {
          debugPrint('语音文件为空: $voicePath');
          voicePath = null;
        } else {
          debugPrint('成功加载语音文件: $voicePath (${size} 字节)');
        }
      }
    }

    return ChatMessage(
      id: map['id'],
      content: map['content'],
      type: type,
      isMe: map['isMe'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp']),
      duration: map['duration'] != null ? Duration(milliseconds: map['duration']) : null,
      imagePath: imagePath,
      voicePath: voicePath,
    );
  }

  // 获取最近的一条消息
  static Future<ChatMessage?> getLatestMessage(String userId) async {
    final messages = await loadMessages(userId);
    if (messages.isEmpty) return null;
    
    // 按时间戳排序并返回最新的消息
    messages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return messages.first;
  }
} 