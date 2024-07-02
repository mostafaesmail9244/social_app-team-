import 'package:bloc/bloc.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  int currentIndex = 0;

  void changeBottomNavBar(index) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ChangeBottomNavBar());
    }
  }
  // void changeBottomNavBar(int index) {
  //   if (index == 2) {
  //     emit(NavigatToPostScreen());
  //   } else {
  //     currentIndex = index;
  //     emit(ChangeBottomNavBar());
  //   }
  // }
}
