part of 'like_commet_cubit.dart';

sealed class LikeCommentState {
  const LikeCommentState();
}

final class Initial extends LikeCommentState {}

final class AddLikeSuccess extends LikeCommentState {}

final class LikesCountUpdated extends LikeCommentState {
  final String postId;
  const LikesCountUpdated(this.postId);
}

class CommentsCountUpdated extends LikeCommentState {
  final String postId;
  final int count;
  const CommentsCountUpdated(this.postId, this.count);
}
