part of 'like_commen_cubit.dart';

sealed class LikeCommentState {
  const LikeCommentState();
}

final class Initial extends LikeCommentState {}

final class AddLikeSuccess extends LikeCommentState {}
