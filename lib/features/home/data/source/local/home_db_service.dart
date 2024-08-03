import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:social_app/core/constant/db_keys.dart';
import 'package:social_app/core/repo/db_service.dart';
import 'package:social_app/features/home/data/model/posts_response.dart';

class HomeDbService implements InterfaceRepository<PostsResponse> {
  static const String _key = DbKeys.posts;
  static late final Box<PostsResponse> _postsBox;
  static Future<void> initDataBase() async {
    try {
      // Hive.registerAdapter(PostsResponseAdapter());

      Hive.registerAdapter(PostsResponseAdapter());
      Hive.registerAdapter(PostsDataAdapter());
      _postsBox = await Hive.openBox<PostsResponse>(_key);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<PostsResponse?> getAll() async {
    try {
      if (_postsBox.isOpen && _postsBox.isNotEmpty) {
        return _postsBox.get(_key);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  @override
  Future<bool> isDataAvailable() async {
    try {
      return _postsBox.isEmpty;
    } catch (e) {
      debugPrint(e.toString());
      return true;
    }
  }

  @override
  Future<void> insertItem({required PostsResponse object}) async {
    try {
      await _postsBox.put(_key, object);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
