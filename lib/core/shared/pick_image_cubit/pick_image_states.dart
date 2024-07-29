import 'dart:io';

abstract class PickImageStates {}

class PickImageInitialState extends PickImageStates {}

class PickImageLoadingState extends PickImageStates {}

class PickPostImageState extends PickImageStates {}

class PickProfileImageState extends PickImageStates {
  final File? image;
  PickProfileImageState({this.image});
}

class PickImageErrorState extends PickImageStates {}

class RemoveImageState extends PickImageStates {}
