import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/get_posts_repo.dart';
import 'get_posts_states.dart';

class GetPostsCubit extends Cubit<GetPostsStates> {
  final GetPostsRepo _repo;

  GetPostsCubit(this._repo) : super(const GetPostsStates.initial());

  void emitGetPosts() async {
    emit(const GetPostsStates.getPostsLoading());
    final response = await _repo.getPosts();
    response.fold(
        (error) =>
            emit(GetPostsStates.getPostsError(error: error.errorMessage)),
        (data) {
      debugPrint("=========suc posts");
      emit(GetPostsStates.getPostsSuccess(data));
    });
  }
}
