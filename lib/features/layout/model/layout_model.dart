import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/d_injection/injection.dart';
import '../../home/view/home_screen.dart';
import '../../post/view/post_view.dart';
import '../../post/view_model/add_post_cubit/add_cubit.dart';
import '../../profile/view/profile_view.dart';
import '../../chats/view/chat_screen.dart';
import '../../users/users_screen.dart';

const List<String> labels = [
  "Home",
  "Chat",
  "Post",
  "Users",
  "Settings",
];

const List<Icon> iconsList = [
  Icon(IconlyLight.home),
  Icon(IconlyLight.chat),
  Icon(IconlyLight.upload),
  Icon(IconlyLight.user2),
  Icon(IconlyLight.setting),
];

const List<Icon> activeIconsList = [
  Icon(IconlyBold.home),
  Icon(IconlyBold.chat),
  Icon(IconlyBold.upload),
  Icon(IconlyBold.user2),
  Icon(IconlyBold.setting),
];

List<Widget> screensList = [
  const HomeScreen(),
  const ChatScreen(),
  MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<PickImageCubit>()),
      BlocProvider(create: (context) => getIt<AddPostCubit>()),
    ],
    child: const PostView(),
  ),
  const UsersScreen(),
  const ProfileView(),
];
