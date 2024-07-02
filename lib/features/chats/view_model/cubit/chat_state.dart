import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/features/chats/data/models/message_model.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState<T> with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.getUsersLoadingState() = GetUsersLoadingState;
  const factory ChatState.getUsersSuccessState(List<UserResponse> users) =
      GetUsersSuccessState<T>;
  const factory ChatState.getUsersErrorState({required String error}) =
      GetUsersErrorState;
  const factory ChatState.getMessagesSuccessState(List<MessageModel> messages) =
      GetMessagesSuccessState;
  const factory ChatState.getMessagesErrorState({required String error}) =
      GetMessagesErrorState;
  const factory ChatState.sendMessageSuccessState() = SendMessageSuccessState;
  const factory ChatState.sendMessageErrorState({required String error}) =
      SendMessageErrorState;
}
