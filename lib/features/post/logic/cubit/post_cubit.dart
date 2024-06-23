import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());
  final ImagePicker _imagePicker = ImagePicker();
  File? postFile;
  Future<void> pickFromGalary() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      postFile = File(xFile.path);
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  Future<void> pickFromCamera() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (xFile != null) {
      postFile = File(xFile.path);
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  void removeImage() {
    postFile = null;
    emit(ImageNotPicked());
  }

// upload posts
  // void uploadPostWithoutImage({
  //   String? postImage,
  //   required String dateTime,
  //   required String post,
  // }) async {
  //   emit(UploadPostLoadingState());
  //   FirebaseFirestore.instance
  //       .collection(Constants.postsCollection)
  //       .add(PostModel(
  //               uId: Constants.userModel!.id!,
  //               name: Constants.userModel!.name!,
  //               profileImage: Constants.userModel!.proflieImage!,
  //               date: dateTime,
  //               image: postImage,
  //               post: post)
  //           .toMap())
  //       .then((value) {
  //     emit(UploadPostSuccessState());
  //   }).catchError((error) {
  //     emit(UploadPostErrorState(error: error));
  //   });
  // }

  // Future<void> uploadPostWithImage({
  //   required String dateTime,
  //   required String post,
  // }) async {
  //   if (postFile == null) return;
  //   final destination = Uri.file(postFile!.path).pathSegments.last;
  //   emit(UploadPostImageLoadingState());

  //   final ref = FirebaseStorage.instance.ref().child('posts/$destination');
  //   await ref.putFile(postFile!).then((value) async {
  //     await value.ref.getDownloadURL().then((imageUrl) {
  //       uploadPostWithoutImage(
  //           // name: Constants.userModel!.name!,
  //           dateTime: dateTime,
  //           post: post,
  //           // uId: Constants.userModel!.id!,
  //           // profileImage: Constants.userModel!.proflieImage!,
  //           postImage: imageUrl);
  //     });
  //     emit(UploadPostImageSuccessState());
  //   }).catchError((error) {
  //     emit(UploadPostImageErrorState(error: error));
  //   });
  // }
}
