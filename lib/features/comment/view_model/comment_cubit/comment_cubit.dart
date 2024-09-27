import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/model/comment_response.dart';
import '../../data/repo/comment_repo.dart';
import 'comment_states.dart';

class CommentCubit extends Cubit<CommentStates> {
  final CommentRepo _repo;
  CommentCubit(this._repo) : super(const Initial());
  // DateTime dateNow = DateTime.now();

  late final TextEditingController tittleController = TextEditingController();
  late final ScrollController scrollController = ScrollController();
  final FocusNode focusNode = FocusNode();
  Map<String, List<CommentData>> commentData = {};

  void emitToGetComment({required String postId, bool isLoading = true}) async {
    if (isLoading) {
      emit(const GetCommentLoading());
    }
    final response = await _repo.getComments(postId);
    response.fold((error) => emit(GetCommentError(error.errorMessage)), (data) {
      commentData[postId] = data.comments!;
      emit(GetCommentSuccess(data.comments!));
    });
  }

  void localComment(String postId) {
    commentData[postId]!.add(CommentData(
      commentId: "",
      postId: postId,
      tittle: "Loading...",
      uid: CashHelper.get(key: CashConstants.userId),
      username: CashHelper.get(key: CashConstants.userName),
      profilePic: CashHelper.get(key: CashConstants.userImage),
      date: DateTime.now().millisecondsSinceEpoch.toString(),
    ));
    emit(GetCommentSuccess(commentData[postId]!));
  }

  void emitToAddComment(String postId) async {
    // emit(const CommentStates.addCommentLoading());
    if (tittleController.text.trim().isNotEmpty) {
      final response = await _repo.addComments(
        postId: postId,
        tittle: tittleController.text.trim(),
      );
      response.fold((error) => emit(AddCommentError(error.errorMessage)),
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
