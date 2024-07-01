import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState<T> with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.getUSersLoadingState() = _GetUSersLoadingState;
  const factory ChatState.getUSersSuccessState(List<UserResponse> users) =
      _GetUSersSuccessState<T>;
  const factory ChatState.getUSersErrorState({required String error}) =
      _GetUSersErrorState;
}
