import 'package:get_it/get_it.dart';
import 'package:social_app/features/chats/data/repos/chat_repo.dart';
import 'package:social_app/features/chats/view_model/chat_cubit/chat_cubit.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import 'package:social_app/features/post/view_model/add_post_cubit/add_cubit.dart';
import '../../features/chats/data/repos/room_repo.dart';
import '../../features/chats/view_model/room_cubit/room_cubit.dart';
import '../../features/comment/data/repo/comment_repo.dart';
import '../../features/comment/view_model/comment_cubit/comment_cubit.dart';
import '../../features/user_profile/data/repo/user_repo.dart';
import '../../features/user_profile/view_model/get_other_user_cubit/get_other_user_cubit.dart';
import '../../features/users/view_model/users_search_cubit/users_cubit.dart';
import '../../features/home/data/repos/get_posts_repo.dart';
import '../../features/home/view_model/get_posts_cubit/get_posts_cubit.dart';
import '../../features/layout/view_model/layout_cubit/layout_cubit.dart';
import '../../features/login/data/repos/forgot_password_repo.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/view_model/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/post/data/repos/add_post_repo.dart';
import '../../features/my_profile/data/repos/user_repo.dart';
import '../../features/my_profile/view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../features/my_profile/view_model/get_user_cubit/get_user_cubit.dart';
import '../../features/my_profile/view_model/pick_image_cubit/pick_image_cubit.dart';
import '../../features/signup/data/repos/signup_repo.dart';
import '../../features/signup/view_model/signup_cubit/signup_cubit.dart';
import '../cubits/pick_image_cubit/pick_image_cubit.dart';

GetIt getIt = GetIt.instance;

void setubGetIt() {
  //repos
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo());
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo());
  getIt.registerLazySingleton<ForgotPasswordRepo>(() => ForgotPasswordRepo());
  getIt.registerLazySingleton<UserRepo>(() => UserRepo());
  getIt.registerLazySingleton<AddPostRepo>(() => AddPostRepo());
  getIt.registerLazySingleton<ChatRepo>(() => ChatRepo());
  getIt.registerLazySingleton<RoomRepo>(() => RoomRepo());
  getIt.registerLazySingleton<GetPostsRepo>(() => GetPostsRepo());
  getIt.registerLazySingleton<OtherUserRepo>(() => OtherUserRepo());
  getIt.registerLazySingleton<CommentRepo>(() => CommentRepo());

  //cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  getIt.registerFactory<ForgotPassCubit>(() => ForgotPassCubit(getIt()));
  getIt.registerFactory<GetUserCubit>(() => GetUserCubit(getIt()));
  getIt.registerFactory<EditUserCubit>(() => EditUserCubit(getIt()));
  getIt.registerFactory<AddPostCubit>(() => AddPostCubit(getIt()));
  getIt.registerFactory<ChatCubit>(() => ChatCubit(getIt()));
  getIt.registerFactory<RoomCubit>(() => RoomCubit(getIt()));
  getIt.registerFactory<UsersSearchCubit>(() => UsersSearchCubit(getIt()));
  getIt.registerFactory<GetPostsCubit>(() => GetPostsCubit(getIt()));
  getIt.registerFactory<CommentCubit>(() => CommentCubit(getIt()));

  getIt.registerFactory<GetOtherUserPostsCubit>(
      () => GetOtherUserPostsCubit(getIt()));

  getIt.registerFactory<LayoutCubit>(() => LayoutCubit());
  getIt.registerFactory<PickImageCubit>(() => PickImageCubit());
  getIt.registerFactory<PickImageProfileCubit>(() => PickImageProfileCubit());
}
