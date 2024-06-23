import 'package:get_it/get_it.dart';
import 'package:social_app/features/auth/presentation/logic/social_auth/auth_cubit.dart';

GetIt getIt = GetIt.instance;

void setubGetIt() {
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit());
}
