import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/repos/user_repo.dart';
import 'get_user_states.dart';

class GetUserCubit extends Cubit<GetUserStates> {
  final UserRepo _getUserRepo;

  GetUserCubit(this._getUserRepo) : super(const GetUserStates.initial());
  void emitGetUser() async {
    emit(const GetUserStates.getUserLoading());
    final response = await _getUserRepo.getUserInfo(
        uid: CashHelper.get(key: CashConstants.userId));
    response.fold(
        (error) => emit(GetUserStates.getUserError(error: error.errorMessage)),
        (data) {
      CashHelper.put(key: CashConstants.userImage, value: data.image);
      CashHelper.put(key: CashConstants.coverImage, value: data.coverImage);
      CashHelper.put(key: CashConstants.name, value: data.name);
      CashHelper.put(key: CashConstants.bio, value: data.bio);
      CashHelper.put(key: CashConstants.phone, value: data.phone);

      emit(GetUserStates.getUserSuccess(data));
    });
  }
}
