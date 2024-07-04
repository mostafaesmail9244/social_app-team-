import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:social_app/features/chats/data/repos/room_repo.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final RoomRepo _repo;
  SearchCubit(this._repo) : super(const SearchState.initial());
  late final searchController = TextEditingController();
  late final FocusNode searchFocusNode = FocusNode();
  UsersResponse? _userss;

  Future<void> getAllUsers() async {
    emit(const SearchState.getUsersLoading());
    final result =
        await _repo.getAllUsers(uid: CashHelper.get(key: CashConstants.userId));
    result.fold(
      (error) => emit(SearchState.getUsersError(error: error.errorMessage)),
      (users) {
        _userss = users;
        emit(SearchState.getUsersSuccess(users));
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
    emit(SearchState.filterUserSuccess(usersFiltered));
  }

  void clear() {
    searchController.clear();
    usersFiltered.clear();
    searchFocusNode.unfocus();
    emit(SearchState.getUsersSuccess(_userss!));
  }
}
