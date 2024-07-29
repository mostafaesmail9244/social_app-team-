import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';

class ChatRepo {
  final _firestore =
      FirebaseFirestore.instance.collection(FireBaseConstants.roomsCollection);
  final Reference firebaseRef = FirebaseStorage.instance.ref();
  String? downloadImageURL;

  void sendMessage({
    String? type,
    File? image,
    required String message,
    required String roomId,
    required String toId,
  }) async {
    if (type != null) {
      downloadImageURL = await uploadImage(image!, roomId);
    }

    final msgId = const Uuid().v1();
    MessageModel messageModel = MessageModel(
      id: msgId,
      message: message,
      toId: toId,
      fromId: CashHelper.get(key: CashConstants.userId),
      date: DateTime.now().millisecondsSinceEpoch.toString(),
      read: '',
      type: type ?? 'text',
      image: type == null ? null : downloadImageURL,
    );
    _firestore
        .doc(roomId)
        .collection(FireBaseConstants.messagesCollection)
        .doc(msgId)
        .set(messageModel.toJson());

    _firestore.doc(roomId).update({
      'lastMessage': message,
      'lastMessageTime': DateTime.now().millisecondsSinceEpoch.toString(),
    });
  }

  Future readMessage(
      {required RoomsData room, required String messageId}) async {
    _firestore
        .doc(room.id)
        .collection(FireBaseConstants.messagesCollection)
        .doc(messageId)
        .update({'read': 'read'});
  }

  Future<String> uploadImage(File image, String roomId) async {
    String fileName = basename(image.path);
    Reference fire = firebaseRef.child('chatsImages/$roomId/$fileName');
    UploadTask uploadTask = fire.putFile(image);
    TaskSnapshot taskSnapshot = await uploadTask;
    return await taskSnapshot.ref.getDownloadURL();
  }

  void deleteMessage({
    required String roomId,
    required List<String> msgsId,
  }) {
    for (var id in msgsId) {
      _firestore
          .doc(roomId)
          .collection(FireBaseConstants.messagesCollection)
          .doc(id)
          .delete();
    }
  }

  // Stream<void> commentsLengthStream(
  //     {required RoomsData room, required String messageId}) {
  //   _firestore
  //       .doc(room.id)
  //       .collection(FireBaseConstants.messagesCollection)
  //       .snapshots()
  //       .map((snapshot) => snapshot.docs.length);
  // }
}
