// import 'dart:io';

// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:social_app/core/constants/constants.dart';
// import 'package:social_app/core/helper/cach_helper.dart';

// part 'auth_state.dart';
// class AuthCubit extends Cubit<AuthState> {
//   AuthCubit() : super(SocialLoginInitialState());
//   final db = FirebaseFirestore.instance;
//   String uId = '';
//   File? imageFile;
//   final ImagePicker _imagePicker = ImagePicker();
//   Future<void> pickFromGalary() async {
//     final xFile = await _imagePicker.pickImage(source: ImageSource.gallery);
//     if (xFile != null) {
//       imageFile = File(xFile.path);
//       emit(ImagePicked());
//       emit(ImagePicked());
//     } else {
//       emit(ImageNotPicked());
//     }
//   }

//   Future<void> pickFromCamera() async {
//     final xFile = await _imagePicker.pickImage(source: ImageSource.camera);
//     if (xFile != null) {
//       imageFile = File(xFile.path);
//       emit(ImagePicked());
//     } else {
//       emit(ImageNotPicked());
//     }
//   }

//   void removeImage() {
//     imageFile = null;
//     emit(ImageNotPicked());
//   }

//   void userLogin({required String email, required String password}) async {
//     try {
//       emit(SocialLoginLoadingState());
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       uId = FirebaseAuth.instance.currentUser!.uid;
//       CacheHelper.saveString(key: Constants.uId, value: uId);
//       emit(SocialLoginSuccessState());
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         debugPrint('No user found for that email.');
//         emit(SocialLoginErrorState(error: 'No user found for that email.'));
//       } else if (e.code == 'wrong-password') {
//         emit(SocialLoginErrorState(
//             error: 'Wrong password provided for that user.'));
//         debugPrint('Wrong password provided for that user.');
//       }
//     }
//   }

//   void register({
//     required String name,
//     required String email,
//     required String password,
//     required String phone,
//   }) async {
//     try {
//       emit(SocialRegisterLoadingState());
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       uId = FirebaseAuth.instance.currentUser!.uid;
//       // createUser(
//       //   name: name,
//       //   email: email,
//       //   password: password,
//       //   phone: phone,
//       //   image: uId,
//       // );
//       uploadProfileImage(
//           name: name, email: email, password: password, phone: phone);
//       CacheHelper.saveString(key: Constants.uId, value: uId);

//       // emit(CrateUserSuccessState());
//     } on FirebaseAuthException catch (error) {
//       if (error.code == 'weak-password') {
//         debugPrint('The password provided is too weak.');
//         emit(CreateUserErrorState(
//             error: ('The password provided is too weak.')));
//       } else if (error.code == 'email-already-in-use') {
//         debugPrint('The account already exists for that email.');
//         emit(CreateUserErrorState(
//             error: 'The account already exists for that email.'));
//       }
//     }
//   }

//   Future<void> uploadProfileImage({
//     required String name,
//     required String email,
//     required String password,
//     required String phone,
//   }) async {
//     if (imageFile == null) return;
//     // final fileName = p.basename(imageFile!.path);
//     final destination = Uri.file(imageFile!.path).pathSegments.last;

//     final ref = FirebaseStorage.instance.ref().child('users/$destination');
//     await ref.putFile(imageFile!).then((value) async {
//       await value.ref.getDownloadURL().then((imageUrl) {
//         createUser(
//           name: name,
//           email: email,
//           password: password,
//           phone: phone,
//           image: imageUrl.toString(),
//         );
//       });
//       emit(UploadImageSuccess());
//     }).catchError((error) {
//       emit(UploadImageFailed(error: error));
//     });
//   }

//   void createUser({
//     required String name,
//     required String email,
//     required String password,
//     required String phone,
//     required String image,
//   }) async {
//     UserModel user = UserModel(
//       name: name,
//       bio: 'write your bio',
//       id: uId,
//       email: email,
//       phone: phone,
//       profileImage: image,
//     );
//     db
//         .collection(Constants.usersCollection)
//         .doc(uId)
//         .set(user.toJson())
//         .then((value) {
//       emit(CrateUserSuccessState());
//     }).catchError((error) {
//       emit(CreateUserErrorState(error: error));
//     });
//   }
// }
