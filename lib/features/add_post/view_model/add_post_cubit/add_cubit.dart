import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/add_post_repo.dart';
import 'add_states.dart';

class AddPostCubit extends Cubit<AddPostStates> {
  final AddPostRepo _repo;
  AddPostCubit(this._repo) : super(const AddPostStates.initial());
  DateTime dateNow = DateTime.now();

  late AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late final TextEditingController contentController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void emitToAddPost({File? image}) async {
    emit(const AddPostStates.addLoading());
    final response = await _repo.addPost(
      image: image,
      content: contentController.text,
    );
    response.fold(
        (error) => emit(AddPostStates.addError(error: error.errorMessage)),
        (data) {
      contentController.clear();
      emit(AddPostStates.addSuccess(data));
    });
  }

  void validateThenDoAddPost({File? image}) {
    if (formKey.currentState!.validate()) {
      emitToAddPost(image: image);
    } else {
      autovalidateMode = AutovalidateMode.always;
      emit(const AddPostStates.validate());
    }
  }
}
