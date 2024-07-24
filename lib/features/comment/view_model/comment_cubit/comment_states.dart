import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/features/comment/data/model/comment_response.dart';
part 'comment_states.freezed.dart';

@Freezed()
class CommentStates<T> with _$CommentStates {
  const factory CommentStates.initial() = _Initial;
  const factory CommentStates.addCommentLoading() = AddCommentLoading;
  const factory CommentStates.addCommentSuccess(String message) =
      AddCommentSuccess;
  const factory CommentStates.addCommentError({required String error}) =
      AddCommentError;

  const factory CommentStates.getCommentLoading() = GetCommentLoading;
  const factory CommentStates.getCommentSuccess(CommentsResponse data) =
      GetCommentSuccess<T>;
  const factory CommentStates.getCommentError({required String error}) =
      GetCommentError;
}
