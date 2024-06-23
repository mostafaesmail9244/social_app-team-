import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/features/auth/data/models/auth_model/user_model.dart';

part 'profile_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());


//pick profile image
  File? profileFile;
  final ImagePicker _imagePicker = ImagePicker();
  Future<void> pickProfileImageFromGalary() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      profileFile = File(xFile.path);
      emit(ImagePicked());
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  Future<void> pickProfileImageFromCamera() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (xFile != null) {
      profileFile = File(xFile.path);
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  void removeProfileImage() {
    profileFile = null;
    emit(ImageNotPicked());
  }


  //pick background image
  File? covereFile;
  Future<void> pickBackgroundImageFromGalary() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      covereFile = File(xFile.path);
      emit(ImagePicked());
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  Future<void> pickBackgroundImageFromCamera() async {
    final xFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (xFile != null) {
      covereFile = File(xFile.path);
      emit(ImagePicked());
    } else {
      emit(ImageNotPicked());
    }
  }

  void removeBackgroundImage() {
    covereFile = null;
    emit(ImageNotPicked());
  }

}
