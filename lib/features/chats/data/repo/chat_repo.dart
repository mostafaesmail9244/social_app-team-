import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app/features/chats/data/models/message_model.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';

class ChatRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();
  Future<Either<Failure, List<UserResponse>>> getAllUsers(
      {required String uid}) async {
    List<UserResponse> users = [];
    try {
      final snap =
          await _firestore.collection(FireBaseConstants.usersCollection).get();
      for (var user in snap.docs) {
        if (user.id != uid) {
          users.add(UserResponse.fromSnapshot(user));
        }
      }
      return right(users);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  List<MessageModel> messages = [];

  Future<Either<Failure, List<MessageModel>>> getMessages({
    required String receiverId,
    required String currnetUserId,
  }) async {
    try {
      messages.clear(); // Clear the list instead of re-initializing

      // Use a Completer to wait for the first batch of messages
      final Completer<Either<Failure, List<MessageModel>>> completer =
          Completer();

      _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(currnetUserId)
          .collection(FireBaseConstants.chatsCollection)
          .doc(receiverId)
          .collection(FireBaseConstants.messagesCollection)
          .orderBy('date', descending: false)
          .snapshots()
          .listen(
        (event) {
          messages.clear(); // Clear the list instead of re-initializing

          for (var message in event.docs) {
            MessageModel newMessage = MessageModel.fromSnapshot(message);
            if (!messages.any((msg) => msg.messageId == newMessage.messageId)) {
              messages.add(newMessage);
            }
          }
          // Complete the completer with the messages
          if (!completer.isCompleted) {
            completer.complete(right(messages));
          }
        },
        onError: (error) {
          if (error is FirebaseException) {
            completer
                .complete(left(ServerFailure.fromFirebaseAuthException(error)));
          } else {
            completer.complete(left(ServerFailure(error.toString())));
          }
        },
      );

      // Wait for the completer to complete
      return await completer.future;
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> sendMessage({
    required String currnetUserId,
    required String message,
    required String receiverId,
    String? type,
  }) async {
    try {
      String messageId = _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(receiverId)
          .collection(FireBaseConstants.chatsCollection)
          .doc(currnetUserId)
          .collection(FireBaseConstants.messagesCollection)
          .doc()
          .id;

      // to receiver
      MessageModel messageModel = MessageModel(
        messageId: messageId,
        message: message,
        toId: currnetUserId,
        fromId: receiverId,
        date:  DateTime.now().millisecondsSinceEpoch.toString(),
        read: '',
        type: type ?? 'text',
      );

      await _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(receiverId)
          .collection(FireBaseConstants.chatsCollection)
          .doc(currnetUserId)
          .collection(FireBaseConstants.messagesCollection)
          .doc(messageId)
          .set(messageModel.toJson());

      // to current user
      await _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(currnetUserId)
          .collection(FireBaseConstants.chatsCollection)
          .doc(receiverId)
          .collection(FireBaseConstants.messagesCollection)
          .doc(messageId)
          .set(messageModel.toJson());

      return right("Success");
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
//add local here
}
