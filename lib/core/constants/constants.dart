import 'package:social_app/features/auth/data/models/auth_model/user_model.dart';

abstract class Constants {
  static UserModel userModel = UserModel(
    id: '1',
    name: 'Alice Smith',
    bio: 'A passionate Flutter developer.',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    coverImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    email: 'alice.smith@example.com',
    phone: '+1234567890',
  );
  static String uId = 'uId';
  static String usersCollection = 'users';
  // static String postsCollection = 'posts';
  // static String likesCollection = 'likes';
  static const String profileImage =
      'https://img.freepik.com/free-photo/anime-style-portrait-young-student-attending-school_23-2151125072.jpg?t=st=1715175747~exp=1715179347~hmac=7430aa6a5bc0d398a8bace716a457dfd85a22dd39a16f4ed4ed8ead0e45980f7&w=740';
}
