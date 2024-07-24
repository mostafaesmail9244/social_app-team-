import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'pick_image_states.dart';

class PickImageProfileCubit extends Cubit<PickProfileImageStates> {
  PickImageProfileCubit() : super(PickImageInitialState());
  File? selectCoverImage;
  File? selectProfileImage;
  String imageBase64Sell = '';
  void pickFromGallary(bool cover) async {
    // emit(PickImageLoadingState());
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        if (cover) {
          selectCoverImage = File(image.path);
          emit(PickPCoverImageState());
        } else {
          selectProfileImage = File(image.path);
          List<int> imageBytes = selectProfileImage!.readAsBytesSync();
          imageBase64Sell = base64Encode(imageBytes);
          log("############$imageBase64Sell");
          emit(PickProfileImageState());
        }
      }
    } catch (error) {
      emit(PickImageErrorState());
    }
  }

  void removeImage() {
    selectProfileImage = null;
    emit(RemoveImageState());
  }

  void removeCover() {
    selectCoverImage = null;
    emit(RemoveCoverState());
  }
}
