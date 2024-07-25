import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/features/chats/data/models/room_model/rooms_response.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_cubit.dart';
import 'package:social_app/features/users/view_model/users_search_cubit/users_cubit.dart';
import 'package:social_app/features/home/view/widgets/image_details.dart';
import 'package:social_app/features/layout/view/layout_screen.dart';
import 'package:social_app/features/layout/view_model/layout_cubit/layout_cubit.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import 'package:social_app/features/my_profile/view_model/get_user_cubit/get_user_cubit.dart';
import 'package:social_app/features/users/view/users_view.dart';
import '../../features/chats/view/chat_view.dart';
import '../../features/chats/view_model/chat_cubit/chat_cubit.dart';
import '../../features/comment/view/comment_view.dart';
import '../../features/comment/view_model/comment_cubit/comment_cubit.dart';
import '../../features/home/view_model/get_posts_cubit/get_posts_cubit.dart';
import '../../features/login/view/forgot_password_view.dart';
import '../../features/login/view/login_screen.dart';
import '../../features/login/view_model/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/my_profile/data/models/profile_response/profile_response.dart';
import '../../features/my_profile/view/edit_profile_view.dart';
import '../../features/my_profile/view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../features/my_profile/view_model/pick_image_cubit/pick_image_cubit.dart';
import '../../features/signup/view_model/signup_cubit/signup_cubit.dart';
import '../../features/signup/views/signup_view.dart';
import '../../features/user_profile/view/user_profile_view.dart';
import '../../features/user_profile/view_model/get_other_user_cubit/get_other_user_cubit.dart';
import '../cubits/pick_image_cubit/pick_image_cubit.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
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
                  create: (context) => getIt<GetPostsCubit>()..emitGetPosts()),

              BlocProvider(create: (context) => getIt<RoomCubit>()..getRooms()),

              BlocProvider(
                create: (context) => getIt<GetUserCubit>()..emitGetUser(),
              ),
            ],
            child: const LayoutScreen(),
          ),
        );

      case Routes.imageDetails:
        final image = data as String;
        return MaterialPageRoute(
          builder: (context) => ImageDetails(image: image),
        );

      //chatDetailsView
      case Routes.chatView:
        final room = data as RoomsData;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ChatCubit>(),
            child: ChatView(room: room),
          ),
        );

      //editeProfileScreen
      case Routes.editeProfileView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<EditUserCubit>()),
              BlocProvider(create: (context) => getIt<PickImageProfileCubit>()),
            ],
            child: const EditProflieView(),
          ),
        );

      //UsersView
      case Routes.usersView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<UsersSearchCubit>()..getAllUsers(),
              ),
              BlocProvider(create: (context) => getIt<RoomCubit>()),
            ],
            child: const UsersView(),
          ),
        );

      //userProfileView
      case Routes.userProfileView:
        final user = data as UserData;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<GetOtherUserPostsCubit>()
              ..emitGetuserPosts(uid: user.id!),
            child: UserProfileView(data: user),
          ),
        );

      //CommentView
      case Routes.commentView:
        final postId = data as String;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                getIt<CommentCubit>()..emitToGetComment(postId: postId),
            child: CommentView(postID: postId),
          ),
        );
    }
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text("No Route defined for ${settings.name}"),
        ),
      ),
    );
  }
}
