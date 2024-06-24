import 'package:get_it/get_it.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/settings/data/repos/user_repo.dart';
import '../../features/settings/view_model/get_user_cubit/get_user_cubit.dart';
import '../../features/signup/data/repos/signup_repo.dart';
import '../../features/signup/view_model/signup_cubit/signup_cubit.dart';

GetIt getIt = GetIt.instance;

void setubGetIt() {
  //repos
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo());
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo());
  getIt.registerLazySingleton<UserRepo>(() => UserRepo());

  //cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  getIt.registerFactory<GetUserCubit>(() => GetUserCubit(getIt()));
}
