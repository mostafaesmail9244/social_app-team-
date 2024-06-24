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
  late final TextEditingController nameController =
      TextEditingController(text: "${CashHelper.get(key: CashConstants.name)}");
  late final TextEditingController phoneController = TextEditingController(
      text: "${CashHelper.get(key: CashConstants.phone)}");
  late final TextEditingController addressController = TextEditingController(
      text: "${CashHelper.get(key: CashConstants.address)}");

  Future<void> emitToEditMyInfo({File? image}) async {
    emit(EditUserLoadingState());
    final response = await _userRepo.editUserInfo(
      uid: CashHelper.get(key: CashConstants.userId),
      name: nameController.text,
      phone: phoneController.text,
      address: addressController.text,
      image: image,
    );
    response
        .fold((error) => emit(EditUserErrorState(error: error.errorMessage)),
            (message) {
      //debugPrint('fffffffffffffffff is $message');
      emit(EditUserSuccessState(message: message));
    });
  }

  void validateThenDoEdit({File? image}) {
    if (formKey.currentState!.validate()) {
      emitToEditMyInfo(image: image);
    }
  }
}
