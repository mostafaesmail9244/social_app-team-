import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:social_app/core/constant/db_keys.dart';
import 'package:social_app/core/repo/db_service.dart';
import 'package:social_app/features/home/data/model/posts_response.dart';

class HomeDbService implements InterfaceRepository<PostsResponse> {
  static const String _key = DbKeys.posts;
  static Box<PostsResponse>? _postsBox;
  static Future<void> initDataBase() async {
    try {
      Hive.registerAdapter(PostsResponseAdapter());
      Hive.registerAdapter(PostsDataAdapter());

      // Open the box
      _postsBox = await Hive.openBox<PostsResponse>(_key);
    } catch (e) {
      Logger().e(e);
    }
  }

  @override
  Future<PostsResponse?> getAll() async {
    try {
      if (_postsBox!.isOpen && _postsBox!.isNotEmpty) {
        return _postsBox!.get(_key);
      } else {
        return null;
      }
    } catch (e) {
      Logger().e(e);
    }
    return null;
  }

  @override
  Future<bool> isDataAvailable() async {
    try {
      return _postsBox!.isNotEmpty;
    } catch (e) {
      Logger().e(e);
      return false;
    }
  }

  @override
  Future<void> insertItem({required PostsResponse object}) async {
    try {
      await _postsBox!.put(_key, object);
    } catch (e) {
      Logger().e(e);
    }
  }
}
