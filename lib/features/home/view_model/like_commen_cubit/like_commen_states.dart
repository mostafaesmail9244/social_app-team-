part of 'like_commen_cubit.dart';

sealed class LikeCommentState {
  const LikeCommentState();
}

final class Initial extends LikeCommentState {}

final class AddLikeSuccess extends LikeCommentState {}

final class PostUpdated extends LikeCommentState {
  final String postId;
  const PostUpdated(this.postId);
}
