import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'pick_image_states.dart';

class PickImagePostCubit extends Cubit<PickImagePostStates> {
  PickImagePostCubit() : super(PickImageInitialState());
  File? selectImagePost;
  File? selectImageSell;
  String imageBase64Sell = '';
  void pickImage(bool post) async {
    emit(PickImageLoadingState());
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        if (post) {
          selectImagePost = File(image.path);
        } else {
          selectImageSell = File(image.path);
          List<int> imageBytes = selectImageSell!.readAsBytesSync();
          imageBase64Sell = base64Encode(imageBytes);
          log("############$imageBase64Sell");
        }
      }
      emit(PickImageSuccessState());
    } catch (error) {
      emit(PickImageErrorState());
    }
  }

  Future<void> pickFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      selectImageSell = File(image.path);
      emit(PickImageSuccessState());
    } else {
      emit(PickImageErrorState());
    }
  }

  void deleteImage() {
    selectImagePost = null;
    selectImageSell = null;
    emit(RemoveImageState());
  }
}
