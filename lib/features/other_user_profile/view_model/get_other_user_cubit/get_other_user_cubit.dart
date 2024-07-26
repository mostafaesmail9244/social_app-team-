import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/data/model/posts_response.dart';
import '../../data/repo/user_repo.dart';
import 'get_other_user_states.dart';

class GetOtherUserPostsCubit extends Cubit<GetOtherUserPostsStates> {
  final OtherUserRepo _repo;
  GetOtherUserPostsCubit(this._repo)
      : super(const GetOtherUserPostsStates.initial());

  PostsResponse? posts;

  void emitGetuserPosts({required String uid}) async {
    emit(const GetOtherUserPostsStates.getUserLoading());

    final response = await _repo.getOtherUserPostsInfo(uid: uid);
    response.fold(
        (error) => emit(
            GetOtherUserPostsStates.getUserError(error: error.errorMessage)),
        (data) async {
      posts = data;
      emit(GetOtherUserPostsStates.getUserSuccess(data));
    });
  }
}
