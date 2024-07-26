import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/data/model/posts_response.dart';
part 'get_other_user_states.freezed.dart';

@Freezed()
class GetOtherUserPostsStates<T> with _$GetOtherUserPostsStates {
  const factory GetOtherUserPostsStates.initial() = _Initial;
  const factory GetOtherUserPostsStates.getUserLoading() = GetUserLoading;
  const factory GetOtherUserPostsStates.getUserSuccess(PostsResponse posts) =
      GetuserSuccess<T>;
  const factory GetOtherUserPostsStates.getUserError({required String error}) =
      GetUserError;
}
