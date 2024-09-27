import '../../data/model/comment_response.dart';

sealed class CommentStates {
  const CommentStates();
}

final class Initial extends CommentStates {
  const Initial();
}

final class AddCommentLoading extends CommentStates {
  const AddCommentLoading();
}

final class AddCommentSuccess extends CommentStates {
  const AddCommentSuccess();
}

final class AddCommentError extends CommentStates {
  final String error;
  const AddCommentError(this.error);
}

final class GetCommentLoading extends CommentStates {
  const GetCommentLoading();
}

final class GetCommentSuccess extends CommentStates {
  final List<CommentData> data;
  const GetCommentSuccess(this.data);
}

final class GetCommentError extends CommentStates {
  final String error;
  const GetCommentError(this.error);
}
