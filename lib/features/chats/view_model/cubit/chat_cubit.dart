import 'package:bloc/bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/features/chats/data/models/message_model.dart';
import 'package:social_app/features/chats/data/repo/chat_repo.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_state.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this._chatRepo) : super(const ChatState.initial());
  final ChatRepo _chatRepo;

  List<UserResponse> users = [];
  Future<void> getAllUsers() async {
    emit(const ChatState.getUsersLoadingState());
    final result = await _chatRepo.getAllUsers(
        uid: CashHelper.get(key: CashConstants.userId));
    result.fold(
      (error) => emit(ChatState.getUsersErrorState(error: error.errorMessage)),
      (users) {
        this.users = users;
        emit(ChatState.getUsersSuccessState(users));
      },
    );
  }

  List<MessageModel> messages = [];

  Future<void> getMessages({required String receiverId}) async {
    messages.clear(); // Clear the list instead of re-initializing
    final result = await _chatRepo.getMessages(
      currnetUserId: CashHelper.get(key: CashConstants.userId),
      receiverId: receiverId,
    );
    result.fold(
      (error) => emit(ChatState.getMessagesErrorState(
          error: error.errorMessage)), 
      (messages) {
        this.messages.addAll(messages);
        emit(ChatState.getMessagesSuccessState(messages));
      },
    );
  }

  Future<void> sendMessage(
      {required String receiverId, required String message}) async {
    final result = await _chatRepo.sendMessage(
      currnetUserId: CashHelper.get(key: CashConstants.userId),
      receiverId: receiverId,
      message: message,
    );
    result.fold(
      (error) => emit(ChatState.sendMessageErrorState(
          error: error.errorMessage)), 
      (r) async {
        emit(const ChatState.sendMessageSuccessState());
      },
    );
  }
}
