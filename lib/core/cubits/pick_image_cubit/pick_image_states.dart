abstract class PickImagePostStates {}

class PickImageInitialState extends PickImagePostStates {}

class PickImageLoadingState extends PickImagePostStates {}

class PickImageSuccessState extends PickImagePostStates {}

class PickImageErrorState extends PickImagePostStates {}

class RemoveImageState extends PickImagePostStates {}
