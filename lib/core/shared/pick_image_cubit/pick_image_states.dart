import 'dart:io';

abstract class PickImageStates {}

class PickImageInitialState extends PickImageStates {}

class PickImageLoadingState extends PickImageStates {}

class PickImageSuccessState extends PickImageStates {
  final File image;
  PickImageSuccessState(this.image);
}

class PickImageErrorState extends PickImageStates {}

class RemoveImageState extends PickImageStates {}

class PickPostImageStates extends PickImageStates {
  final File image;
  PickPostImageStates(this.image);
}
