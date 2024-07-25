import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/get_posts_repo.dart';
import 'get_posts_states.dart';

class GetPostsCubit extends Cubit<GetPostsStates> {
  final GetPostsRepo _repo;

  GetPostsCubit(this._repo) : super(const GetPostsStates.initial());
  Set<String> loversId = {};

  void emitGetPostsData() async {
    emit(const GetPostsStates.getPostsLoading());
    final response = await _repo.getPostsData();
    response.fold(
        (error) =>
            emit(GetPostsStates.getPostsError(error: error.errorMessage)),
        (data) {
      debugPrint("=========suc posts");
      // loversId.addAll(data.posts!.map((e) => e.loves.toString()).toList());
      emit(GetPostsStates.getPostsSuccess(data));
    });
  }

  void addOrRemoveLike(
      {required String postID, required String uid, required List like}) async {
    final response = await _repo.addOrRemoveLike(postID, uid, like);

    response.fold(
      (mes) => emit(GetPostsStates.addOrRemoveLove(mes)),
      (mes) => emit(GetPostsStates.addOrRemoveLove(mes)),
    );
  }
}
