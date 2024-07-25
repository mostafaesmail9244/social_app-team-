import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/comment_repo.dart';
import 'comment_states.dart';

class CommentCubit extends Cubit<CommentStates> {
  final CommentRepo _repo;
  CommentCubit(this._repo) : super(const CommentStates.initial());
  DateTime dateNow = DateTime.now();

  late final TextEditingController tittleController = TextEditingController();
  late final ScrollController scrollController = ScrollController();
  final FocusNode focusNode = FocusNode();

  void emitToGetComment({required String postId, bool isLoading = true}) async {
    if (isLoading) {
      emit(const CommentStates.getCommentLoading());
    }
    final response = await _repo.getComments(postId);
    response.fold(
        (error) =>
            emit(CommentStates.getCommentError(error: error.errorMessage)),
        (data) {
      emit(CommentStates.getCommentSuccess(data));
    });
  }

  void emitToAddComment(String postId) async {
    // emit(const CommentStates.addCommentLoading());
    if (tittleController.text.trim().isNotEmpty) {
      final response = await _repo.addComments(
          postId: postId, tittle: tittleController.text.trim());
      response.fold(
          (error) =>
              emit(CommentStates.addCommentError(error: error.errorMessage)),
          (data) {
        emitToGetComment(postId: postId, isLoading: false);
        tittleController.clear();
        scroll();
        //emit(CommentStates.addCommentSuccess(data));
      });
    }
  }

  void scroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
          //curve: Curves.easeOutCirc,
        );
      }
    });
  }
}
