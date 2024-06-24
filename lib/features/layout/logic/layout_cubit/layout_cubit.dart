import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/features/layout/chat_screen.dart';
import 'package:social_app/features/home/view/screens/home_screen.dart';
import 'package:social_app/features/post/view/screens/new_post_screen.dart';
import 'package:social_app/features/layout/users_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  int currentIndex = 0;
  // UserModel? user;
  // void getUserData() async {
  //   emit(GetUserDataLoadingState());
  //   await FirebaseFirestore.instance
  //       .collection(Constants.usersCollection)
  //       .doc(CacheHelper.getData(key: Constants.uId))
  //       .get()
  //       .then((value) {
  //     user = UserModel.fromJson(value.data()!);
  //     Constants.userModel = UserModel.fromJson(value.data()!);
  //     debugPrint('get user data success');
  //     emit(GetUserDataSuccessState(data: UserModel.fromJson(value.data()!)));
  //   }).catchError((error) {
  //     emit(GetUserDataErrorState(error: error.toString()));
  //   });
  // }

  List<Widget> screens = const [
    HomeScreen(),
    ChatScreen(),
    NewPostScreen(),
    UsersScreen(),
    //SettingsScreen(),
  ];
  List<BottomNavigationBarItem> navBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(IconlyLight.home),
      activeIcon: Icon(IconlyBold.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyLight.chat),
      activeIcon: Icon(IconlyBold.chat),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyLight.upload),
      activeIcon: Icon(IconlyBold.upload),
      label: 'Post',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyLight.user2),
      activeIcon: Icon(IconlyBold.user2),
      label: 'Users',
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyLight.setting),
      activeIcon: Icon(IconlyBold.setting),
      label: 'Settings',
    ),
  ];

  void changeBottomNavBar(int index) {
    if (index == 2) {
      emit(NavigatToPostScreen());
    } else {
      currentIndex = index;
      emit(ChangeBottomNavBar());
    }
  }
}
