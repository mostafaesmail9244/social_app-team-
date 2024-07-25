import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import '../../../room/data/repos/room_repo.dart';
import 'users_state.dart';

class UsersSearchCubit extends Cubit<UsersSearchState> {
  final RoomRepo _repo;
  UsersSearchCubit(this._repo) : super(const UsersSearchState.initial());
  late final searchController = TextEditingController();
  late final FocusNode searchFocusNode = FocusNode();
  UsersResponse? _userss;

  Future<void> getAllUsers() async {
    emit(const UsersSearchState.getUsersLoading());
    final result =
        await _repo.getAllUsers(uid: CashHelper.get(key: CashConstants.userId));
    result.fold(
      (error) =>
          emit(UsersSearchState.getUsersError(error: error.errorMessage)),
      (users) {
        _userss = users;
        emit(UsersSearchState.getUsersSuccess(users));
      },
    );
  }

  List<UserData> usersFiltered = [];
  void searchAboutUser() {
    usersFiltered = _userss!.users!
        .where((element) => element.name!
            .toLowerCase()
            .startsWith(searchController.text.trim()))
        .toList();
    emit(UsersSearchState.filterUserSuccess(usersFiltered));
  }

  void clear() {
    searchController.clear();
    usersFiltered.clear();
    searchFocusNode.unfocus();
    emit(UsersSearchState.getUsersSuccess(_userss!));
  }
}
