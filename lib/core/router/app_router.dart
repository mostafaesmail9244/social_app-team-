import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/features/layout/layout_screen.dart';
import 'package:social_app/features/layout/view_model/layout_cubit/layout_cubit.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import 'package:social_app/features/profile/view_model/get_user_cubit/get_user_cubit.dart';
import '../../features/chats/view_model/cubit/chat_cubit.dart';
import '../../features/chats/view/chat_detials_screen.dart';
import '../../features/login/view/forgot_password_view.dart';
import '../../features/login/view/login_screen.dart';
import '../../features/login/view_model/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/profile/data/models/profile_response/profile_response.dart';
import '../../features/profile/view/edit_profile_view.dart';
import '../../features/profile/view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../features/profile/view_model/pick_image_cubit/pick_image_cubit.dart';
import '../../features/signup/view_model/signup_cubit/signup_cubit.dart';
import '../../features/signup/views/signup_view.dart';
import '../cubits/pick_image_cubit/pick_image_cubit.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final data = settings.arguments;

    switch (settings.name) {
      //loginScreen
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );

      //forgotPasswordView
      case Routes.forgotPasswordView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ForgotPassCubit>(),
            child: const ForgotPasswordView(),
          ),
        );

      //registerScreen
      case Routes.registerView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<SignupCubit>()),
              BlocProvider(create: (context) => getIt<PickImageCubit>()),
            ],
            child: const SignupView(),
          ),
        );

      //layoutScreen
      case Routes.layoutView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<LayoutCubit>()),
              // BlocProvider(create: (context) => getIt<PickImageCubit>()),
              //BlocProvider(create: (context) => getIt<PostCubit>()),
              BlocProvider(
                  create: (context) => getIt<GetUserCubit>()..emitGetUser()),
            ],
            child: const LayoutScreen(),
          ),
        );

      //chatDetailsView
      case Routes.chatDetailsView:
        final userData = data as UserResponse;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ChatCubit>(),
            child: ChatDetailsScreen(user: userData),
          ),
        );

      //editeProfileScreen
      case Routes.editeProfileView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<EditUserCubit>(),
              ),
              BlocProvider(create: (context) => getIt<PickImageProfileCubit>()),
            ],
            child: const EditProflieView(),
          ),
        );
    }
    return null;
  }
}
