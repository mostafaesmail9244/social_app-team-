import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
import 'package:social_app/features/chats/data/repos/chat_repo.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepo _chatRepo;
  ChatCubit(this._chatRepo) : super(ChatInitial());

  // late final ScrollController scrollController = ScrollController();
  final TextEditingController textControler = TextEditingController();
  List<MessageModel> messagesList = [];
  List<String> selectedMessages = [];

  void sendMessage({
    required String roomId,
    required String toId,
    String? type,
    File? image,
    bool isSendImageView = false,
  }) {
    _chatRepo.sendMessage(
      message: textControler.text,
      toId: toId,
      roomId: roomId,
      type: type,
      image: image,
    );
    if (isSendImageView) {
      emit(ChatImageSuccess());
    }
  }

  void getMessages({required String roomId}) {
    _chatRepo.getMessages(roomId).listen(
      (event) {
        for (var change in event.docChanges) {
          if (change.type == DocumentChangeType.added) {
            messagesList.insert(0, MessageModel.fromSnapshot(change.doc));
          } else if (change.type == DocumentChangeType.modified) {
            var index =
                messagesList.indexWhere((msg) => msg.id == change.doc.id);
            if (index != -1) {
              messagesList[index] = MessageModel.fromSnapshot(change.doc);
            }
          } else if (change.type == DocumentChangeType.removed) {
            messagesList.removeWhere((msg) => msg.id == change.doc.id);
          }
        }
        emit(ChatSuccess());
      },
    );
  }

  void selectedMessage(String msgId) {
    selectedMessages.contains(msgId)
        ? selectedMessages.remove(msgId)
        : selectedMessages.add(msgId);
    emit(SelectBubble());
  }

  void copyMessage(String msgId) {
    selectedMessages.contains(msgId)
        ? selectedMessages.remove(msgId)
        : selectedMessages.add(msgId);
    emit(SelectBubble());
  }

  void deleteMessage({required String roomId}) {
    _chatRepo.deleteMessage(roomId: roomId, msgsId: selectedMessages);
    selectedMessages.clear();
    emit(SelectBubble());
  }

  void readMessage({required RoomsData room, required MessageModel message}) {
    if (message.toId == CashHelper.get(key: CashConstants.userId)) {
      _chatRepo.readMessage(messageId: message.id, room: room);
    }
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

  // void getMessages({required String roomId}) {
  //   _firestore
  //       .collection(FireBaseConstants.roomsCollection)
  //       .doc(roomId)
  //       .collection(FireBaseConstants.messagesCollection)
  //       .orderBy('date', descending: true)
  //       .snapshots()
  //       .listen((event) {
  //     for (var change in event.docChanges) {
  //       if (change.type == DocumentChangeType.added) {
  //         messagesList.add(MessageModel.fromSnapshot(change.doc));
  //       } else if (change.type == DocumentChangeType.modified) {
  //         var index =
  //             messagesList.indexWhere((msg) => msg.messageId == change.doc.id);
  //         if (index != -1) {
  //           messagesList[index] = MessageModel.fromSnapshot(change.doc);
  //         }
  //       } else if (change.type == DocumentChangeType.removed) {
  //         messagesList.removeWhere((msg) => msg.messageId == change.doc.id);
  //       }
  //     }
  //     emit(ChatSuccess());
  //   });
  // }
}
