import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/d_injection/injection.dart';
import '../../home/view/home_view.dart';
import '../../add_post/view/add_post_view.dart';
import '../../add_post/view_model/add_post_cubit/add_cubit.dart';
import '../../profile/view/profile_view.dart';
import '../../rooms_chat/view/room_view.dart';
import '../../users_search/view/users_search_view.dart';
import '../../users_search/view_model/users_search_cubit/users_search_cubit.dart';

const List<String> labels = [
  "Home",
  "Chat",
  "Post",
  "Users",
  "Profile",
];

const List<Icon> iconsList = [
  Icon(IconlyLight.home),
  Icon(IconlyLight.chat),
  Icon(IconlyLight.upload),
  Icon(IconlyLight.user2),
  Icon(IconlyLight.profile),
];

const List<Icon> activeIconsList = [
  Icon(IconlyBold.home),
  Icon(IconlyBold.chat),
  Icon(IconlyBold.upload),
  Icon(IconlyBold.user2),
  Icon(IconlyBold.profile),
];

final List<Widget> screensList = [
  const HomeView(),
  const RoomView(),
  MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<PickImageCubit>()),
      BlocProvider(create: (context) => getIt<AddPostCubit>()),
    ],
    child: const AddPostView(),
  ),
  BlocProvider(
    create: (context) => getIt<UsersSearchCubit>()..getAllUsers(),
    child: const UsersSearcView(),
  ),
  const ProfileView(),
];
