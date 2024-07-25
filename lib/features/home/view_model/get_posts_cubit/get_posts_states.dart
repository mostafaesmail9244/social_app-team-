import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/posts_response.dart';
part 'get_posts_states.freezed.dart';

@Freezed()
class GetPostsStates<T> with _$GetPostsStates {
  const factory GetPostsStates.initial() = _Initial;
  const factory GetPostsStates.getPostsLoading() = GetPostsLoading;
  const factory GetPostsStates.getPostsSuccess(PostsResponse postsResponse) =
      GetPostsSuccess<T>;
  const factory GetPostsStates.getPostsError({required String error}) =
      GetPostsError;

  const factory GetPostsStates.addOrRemoveLove(String message) =
      AddOrRemoveLove;
}
