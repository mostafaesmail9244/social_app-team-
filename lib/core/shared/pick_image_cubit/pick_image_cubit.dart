import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'pick_image_states.dart';

class PickImageCubit extends Cubit<PickImageStates> {
  PickImageCubit() : super(PickImageInitialState());
  File? selectImage;
  File? postImage;
  String imageBase64Sell = '';
  void pickImage({bool post = false, required bool isGallary}) async {
    emit(PickImageLoadingState());
    try {
      final image = await ImagePicker().pickImage(
          source: isGallary ? ImageSource.gallery : ImageSource.camera);
      if (image != null) {
        if (post) {
          postImage = File(image.path);
          List<int> imageBytes = postImage!.readAsBytesSync();
          imageBase64Sell = base64Encode(imageBytes);
          log("############$imageBase64Sell");
          emit(PickPostImageStates(postImage!));
        } else {
          selectImage = File(image.path);
          emit(PickImageSuccessState(selectImage!));
        }
      }
    } catch (error) {
      emit(PickImageErrorState());
    }
  }

  void removeImage() {
    selectImage = null;
    postImage = null;
    emit(RemoveImageState());
  }
}
