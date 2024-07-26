import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/user_repo.dart';
import 'get_other_user_states.dart';

class GetOtherUserPostsCubit extends Cubit<GetOtherUserPostsStates> {
  final OtherUserRepo _repo;

  GetOtherUserPostsCubit(this._repo)
      : super(const GetOtherUserPostsStates.initial());
  void emitGetuserPosts({required String uid}) async {
    emit(const GetOtherUserPostsStates.getUserLoading());

    final response = await _repo.getOtherUserPostsInfo(uid: uid);
    response.fold(
        (error) => emit(
            GetOtherUserPostsStates.getUserError(error: error.errorMessage)),
        (data) async {
      emit(GetOtherUserPostsStates.getUserSuccess(data));
    });
  }
}
