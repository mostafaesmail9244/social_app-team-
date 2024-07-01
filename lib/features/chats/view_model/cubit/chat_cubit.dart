import 'package:bloc/bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/features/chats/data/repo/chat_repo.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_state.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this._chatRepo) : super(const ChatState.initial());
  final ChatRepo _chatRepo;
  List<UserResponse> users = [];
  Future<void> getAllUsers() async {
    emit(const ChatState.getUSersLoadingState());
    final result = await _chatRepo.getAllUsers(
        uid: CashHelper.get(key: CashConstants.userId));
    result.fold(
      (error) => emit(ChatState.getUSersErrorState(error: error.errorMessage)),
      (users) {
        this.users = users;
        emit(ChatState.getUSersSuccessState(users));
      },
    );
  }
}
