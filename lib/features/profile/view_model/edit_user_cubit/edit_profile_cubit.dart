import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/repos/user_repo.dart';
import 'edit_profile_state.dart';

class EditUserCubit extends Cubit<EditUserStatus> {
  final UserRepo _userRepo;
  EditUserCubit(this._userRepo) : super(EditUserInitial());

  final formKey = GlobalKey<FormState>();
  late final TextEditingController nameController = TextEditingController(
      text: "${CashHelper.get(key: CashConstants.userName)}");
  late final TextEditingController phoneController = TextEditingController(
      text: "${CashHelper.get(key: CashConstants.phone)}");
  late final TextEditingController bio =
      TextEditingController(text: "${CashHelper.get(key: CashConstants.bio)}");

  Future<void> emitToEditMyInfo({File? profileImage, File? coverImage}) async {
    emit(EditUserLoadingState());
    final response = await _userRepo.editUserInfo(
      uid: CashHelper.get(key: CashConstants.userId),
      name: nameController.text,
      phone: phoneController.text,
      bio: bio.text,
      profileImage: profileImage,
      coverImage: coverImage,
    );
    response.fold(
      (error) => emit(EditUserErrorState(error: error.errorMessage)),
      (res) => emit(EditUserSuccessState(message: res)),
    );
  }

  void validateThenDoEdit({File? profileImage, File? coverImage}) {
    if (formKey.currentState!.validate()) {
      emitToEditMyInfo(profileImage: profileImage, coverImage: coverImage);
    }
  }
}
