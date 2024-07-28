import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
import 'package:social_app/features/chats/data/repos/chat_repo.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../room/data/models/room_model/rooms_response.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepo _chatRepo;
  ChatCubit(this._chatRepo) : super(ChatInitial());

  // late final ScrollController scrollController = ScrollController();
  // late final TextEditingController textControler = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<MessageModel> messagesList = [];

  void sendMessage({
    required String roomId,
    required String toId,
    required String message,
  }) {
    _chatRepo.sendMessage(message: message, toId: toId, roomId: roomId);
  }

  void getMessages({required String roomId}) {
    _firestore
        .collection(FireBaseConstants.roomsCollection)
        .doc(roomId)
        .collection(FireBaseConstants.messagesCollection)
        .orderBy('date', descending: true)
        .snapshots()
        .listen((event) {
      messagesList.clear();
      for (var doc in event.docs) {
        messagesList.add(MessageModel.fromSnapshot(doc));
      }
      emit(ChatSuccess());
    });
  }

  void readMessage({required RoomsData room}) async {
    for (var msg in messagesList) {
      if (msg.toId == CashHelper.get(key: CashConstants.userId)) {
        await _chatRepo.readMessage(messageId: msg.messageId, room: room);
      }
    }
    emit(ChatSuccess());
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
