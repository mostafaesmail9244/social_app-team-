import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../data/repo/follow_repo.dart';

part 'follow_state.dart';

class FollowCubit extends Cubit<FollowState> {
  final FollowRepo _repo;
  FollowCubit(this._repo) : super(Initial());

  int? followers;
  int? following;
  UserData? userData;
  // void getFollow(UserData user) async {
  //   followers = user.followers!.length;
  //   following = user.following!.length;
  //   userData = user;
  //   emit(AddFollowSuccess());
  // }

  // void addeFollow() async {
  //   followers = followers! + 1;
  //   emit(AddFollowSuccess());
  // }

  void addOrRemoveFollow(UserData user) async {
    await _repo.followUser(
      myId: CashHelper.get(key: CashConstants.userId),
      followUserId: user.id!,
    );
    getSpecificUser(userData!);
    // emit(AddFollowSuccess());
  }

  void getSpecificUser(UserData user) async {
    final response = await _repo.getUserInfo(uid: user.id!);
    response.fold((error) {
      debugPrint(error.toString());
    }, (data) {
      followers = data.followers!.length;
      following = data.following!.length;
      userData = data;
      emit(AddFollowSuccess());
    });
  }
}
