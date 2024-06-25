import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_states.freezed.dart';

@Freezed()
class AddPostStates<T> with _$AddStates {
  const factory AddPostStates.initial() = _Initial;
  const factory AddPostStates.addLoading() = AddLoading;
  const factory AddPostStates.addSuccess(String data) = AddSuccess<T>;
  const factory AddPostStates.addError({required String error}) = AddError;
}
