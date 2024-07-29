import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';

class ChatRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();

  void sendMessage({
    String? type,
    required String message,
    required String roomId,
    required String toId,
  }) async {
    final msgId = const Uuid().v1();
    MessageModel messageModel = MessageModel(
      messageId: msgId,
      message: message,
      toId: toId,
      fromId: CashHelper.get(key: CashConstants.userId),
      date: DateTime.now().millisecondsSinceEpoch.toString(),
      read: '',
      type: 'text',
    );
    _firestore
        .collection(FireBaseConstants.roomsCollection)
        .doc(roomId)
        .collection(FireBaseConstants.messagesCollection)
        .doc(msgId)
        .set(messageModel.toJson());

    _firestore
        .collection(FireBaseConstants.roomsCollection)
        .doc(roomId)
        .update({
      'lastMessage': message,
      'lastMessageTime': DateTime.now().millisecondsSinceEpoch.toString(),
    });
  }

  Future readMessage(
      {required RoomsData room, required String messageId}) async {
    _firestore
        .collection(FireBaseConstants.roomsCollection)
        .doc(room.id)
        .collection(FireBaseConstants.messagesCollection)
        .doc(messageId)
        .update({'read': 'read'});
  }
}
