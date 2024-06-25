import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app/bloc_observer.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'social_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setubGetIt();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.grey));
  await CashHelper.init();
  await Firebase.initializeApp();
  runApp(const SocialApp());
}
