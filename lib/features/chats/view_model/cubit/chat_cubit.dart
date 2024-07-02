import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/features/chats/data/models/message_model.dart';
import 'package:social_app/features/chats/data/repo/chat_repo.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_state.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/firebase_service/firebase_constants.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepo _chatRepo;
  ChatCubit(this._chatRepo) : super(const ChatState.initial());

  // late final ScrollController scrollController = ScrollController();
  // late final TextEditingController textControler = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<UserResponse> users = [];
  List<MessageModel> messagesList = [];

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

  Future<void> sendMessage(
      {required String receiverId, required String message}) async {
    final String msgId = const Uuid().v1();
    MessageModel messageModel = MessageModel(
      messageId: msgId,
      message: message,
      toId: receiverId,
      fromId: CashHelper.get(key: CashConstants.userId),
      date: DateTime.now().millisecondsSinceEpoch.toString(),
      read: '',
      type: 'text',
    );
  //  messagesList.clear();
    messagesList.add(messageModel);
    emit(const ChatState.getUsersLoadingState());
    await _chatRepo.sendMessage(messageModel: messageModel);
  }

  Future<void> getMessages({required String receiverId}) async {
    _firestore
        .collection(FireBaseConstants.usersCollection)
        .doc(CashHelper.get(key: CashConstants.userId))
        .collection(FireBaseConstants.chatsCollection)
        .doc(receiverId)
        .collection(FireBaseConstants.messagesCollection)
        .orderBy('date', descending: true)
        .snapshots()
        .listen((event) {
      messagesList.clear();
      for (var doc in event.docs) {
        messagesList.add(MessageModel.fromSnapshot(doc));
        emit(ChatState.getMessagesSuccessState(messagesList));
      }
    });
  }

  // void scroll() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     if (scrollController.hasClients) {
  //       scrollController.animateTo(
  //         scrollController.position.maxScrollExtent,
  //         duration: const Duration(milliseconds: 500),
  //         curve: Curves.easeOut,
  //         //curve: Curves.easeOutCirc,
  //       );
  //     }
  //   });
  // }
}
