import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/model/posts_response.dart';
import '../../data/repos/like_comment_repo.dart';

part 'like_commen_states.dart';

class LikeCommentCubit extends Cubit<LikeCommentState> {
  final LikeCommentRepo _repo;
  LikeCommentCubit(this._repo) : super(Initial());
  PostsData? post;

  void getSpecificUser(String postId) async {
    final response = await _repo.getSpecificPostData(
      myId: CashHelper.get(key: CashConstants.userId),
      postId: postId,
    );
    response.fold((error) {
      debugPrint(error.toString());
    }, (data) {
      post = data;
      emit(AddLikeSuccess());
    });
  }
}
