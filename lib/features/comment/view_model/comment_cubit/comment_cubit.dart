import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/comment_repo.dart';
import 'comment_states.dart';

class CommentCubit extends Cubit<CommentStates> {
  final CommentRepo _repo;
  CommentCubit(this._repo) : super(const CommentStates.initial());
  DateTime dateNow = DateTime.now();

  late final TextEditingController tittleController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void emitToGetComment(String postId) async {
    emit(const CommentStates.getCommentLoading());
    final response = await _repo.getComments(postId);
    response.fold(
        (error) =>
            emit(CommentStates.getCommentError(error: error.errorMessage)),
        (data) {
      //tittleController.clear();
      emit(CommentStates.getCommentSuccess(data));
    });
  }

  void emitToAddComment(String postId) async {
    emit(const CommentStates.addCommentLoading());
    final response = await _repo.addComments(
        postId: postId, tittle: tittleController.text.trim());
    response.fold(
        (error) =>
            emit(CommentStates.addCommentError(error: error.errorMessage)),
        (data) {
      //tittleController.clear();
      emit(CommentStates.addCommentSuccess(data));
    });
  }
}
