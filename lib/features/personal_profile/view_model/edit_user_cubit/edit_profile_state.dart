sealed class EditUserStatus {
  const EditUserStatus();
}

final class EditUserInitial extends EditUserStatus {}

final class EditUserLoadingState extends EditUserStatus {}

final class EditUserSuccessState extends EditUserStatus {
  final String message;
  const EditUserSuccessState({required this.message});
}

final class EditUserErrorState extends EditUserStatus {
  final String error;
  const EditUserErrorState({required this.error});
}
