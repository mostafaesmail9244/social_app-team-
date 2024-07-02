part of 'layout_cubit.dart';

sealed class LayoutState {}

final class LayoutInitial extends LayoutState {}

final class ChangeBottomNavBar extends LayoutState {}

final class ChangeTheme extends LayoutState {}

final class NavigatToPostScreen extends LayoutState {}

final class GetUserDataLoadingState extends LayoutState {}

// final class GetUserDataSuccessState extends LayoutState {
//   final UserModel data;

//   GetUserDataSuccessState({required this.data});
// }

final class GetUserDataErrorState extends LayoutState {
  final String error;

  GetUserDataErrorState({required this.error});
}
