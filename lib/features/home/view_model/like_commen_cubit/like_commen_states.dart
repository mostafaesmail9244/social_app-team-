part of 'like_commen_cubit.dart';

sealed class LikeCommentState {
  const LikeCommentState();
}

final class Initial extends LikeCommentState {}

final class AddLikeSuccess extends LikeCommentState {}

final class LikeCountUpdated extends LikeCommentState {
  final String postId;
  const LikeCountUpdated(this.postId);
}

class CommentsCountUpdated extends LikeCommentState {
  final String postId;
  final int count;
  CommentsCountUpdated(this.postId, this.count);
}
