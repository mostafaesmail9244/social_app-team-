import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/features/auth/presentation/logic/social_auth/auth_cubit.dart';
import 'package:social_app/features/auth/presentation/view/login_screen.dart';
import 'package:social_app/features/auth/presentation/view/register_screen.dart';
import 'package:social_app/features/layout/layout_screen.dart';
import 'package:social_app/features/layout/logic/layout_cubit/layout_cubit.dart';
import 'package:social_app/features/post/logic/cubit/post_cubit.dart';
import 'package:social_app/features/post/view/screens/new_post_screen.dart';
import 'package:social_app/features/settings/logic/cubit/profile_cubit.dart';
import 'package:social_app/features/settings/view/screens/edite_profile_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<AuthCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<AuthCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LayoutCubit(),
              ),
            ],
            child: const LayoutScreen(),
          ),
        );
      case Routes.editeProfileScreen:
        // final user = arguments as UserModel;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SettingsCubit(),
            child: const EditeProflieScreen(),
          ),
        );
      case Routes.addPostScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PostCubit(),
            child: const NewPostScreen(),
          ),
        );
    }
    return null;
  }
}
