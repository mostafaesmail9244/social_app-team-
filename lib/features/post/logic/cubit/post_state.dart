part of 'post_cubit.dart';

sealed class PostState {}

final class PostInitial extends PostState {}

final class ImagePicked extends PostState {}

final class ImageNotPicked extends PostState {}

final class GetPostsLoadingState extends PostState {}

final class GetPostsSuccessState extends PostState {}

final class GetPostsErrorState extends PostState {
  final String error;

  GetPostsErrorState({required this.error});
}

final class UploadPostLoadingState extends PostState {}

final class UploadPostSuccessState extends PostState {}

final class UploadPostErrorState extends PostState {
  final String error;

  UploadPostErrorState({required this.error});
}

final class UploadPostImageLoadingState extends PostState {}

final class UploadPostImageSuccessState extends PostState {}

final class UploadPostImageErrorState extends PostState {
  final String error;

  UploadPostImageErrorState({required this.error});
}
final class AddLikeToPostSuccessState extends PostState {}

final class AddLikeToPostErrorState extends PostState {
  final String error;

  AddLikeToPostErrorState({required this.error});
}
