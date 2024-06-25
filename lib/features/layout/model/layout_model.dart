import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../home/view/screens/home_screen.dart';
import '../../post/view/screens/new_post_screen.dart';
import '../../profile/view/profile_view.dart';
import '../chat_screen.dart';
import '../users_screen.dart';

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

List<Widget> screensList = const [
  HomeScreen(),
  ChatScreen(),
  NewPostScreen(),
  UsersScreen(),
  ProfileView(),
];
