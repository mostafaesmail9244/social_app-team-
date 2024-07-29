import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
import 'package:social_app/features/chats/data/repos/chat_repo.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepo _chatRepo;
  ChatCubit(this._chatRepo) : super(ChatInitial());

  // late final ScrollController scrollController = ScrollController();
  final TextEditingController textControler = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<MessageModel> messagesList = [];

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
    _firestore
        .collection(FireBaseConstants.roomsCollection)
        .doc(roomId)
        .collection(FireBaseConstants.messagesCollection)
        .orderBy('date', descending: false)
        .snapshots()
        .listen((event) {
      for (var change in event.docChanges) {
        if (change.type == DocumentChangeType.added) {
          messagesList.insert(0, MessageModel.fromSnapshot(change.doc));
        } else if (change.type == DocumentChangeType.modified) {
          var index = messagesList.indexWhere((msg) => msg.id == change.doc.id);
          if (index != -1) {
            messagesList[index] = MessageModel.fromSnapshot(change.doc);
          }
        } else if (change.type == DocumentChangeType.removed) {
          messagesList.removeWhere((msg) => msg.id == change.doc.id);
        }
      }
      emit(ChatSuccess());
    });
  }

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

  void readMessage(
      {required RoomsData room, required MessageModel message}) async {
    if (message.toId == CashHelper.get(key: CashConstants.userId)) {
      await _chatRepo.readMessage(messageId: message.id, room: room);
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
}
