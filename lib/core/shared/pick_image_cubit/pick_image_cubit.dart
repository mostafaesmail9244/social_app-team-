import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'pick_image_states.dart';

class PickImageCubit extends Cubit<PickImageStates> {
  PickImageCubit() : super(PickImageInitialState());
  File? selectPostImage;
  File? selectChatImage;
  String imageBase64Sell = '';
  void pickFromGallary(bool post) async {
    emit(PickImageLoadingState());
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        if (post) {
          selectPostImage = File(image.path);
          emit(PickPostImageState());
        } else {
          selectChatImage = File(image.path);
          List<int> imageBytes = selectChatImage!.readAsBytesSync();
          imageBase64Sell = base64Encode(imageBytes);
          log("############$imageBase64Sell");
          emit(PickProfileImageState(image: selectChatImage));
        }
      }
    } catch (error) {
      emit(PickImageErrorState());
    }
  }

  Future<void> pickFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      selectChatImage = File(image.path);
      emit(PickPostImageState());
    } else {
      emit(PickImageErrorState());
    }
  }

  void removeImage() {
    selectPostImage = null;
    selectChatImage = null;
    emit(RemoveImageState());
  }
}
