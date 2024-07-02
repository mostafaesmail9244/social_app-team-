import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../home/view/screens/home_screen.dart';
import '../../post/view/post_view.dart';
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

const List<Widget> screensList = [
  HomeScreen(),
  ChatScreen(),
  PostView(),
  UsersScreen(),
  ProfileView(),
];
