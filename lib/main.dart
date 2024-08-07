import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_app/bloc_observer.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/features/home/data/source/local/home_db_service.dart';
import 'core/router/app_router.dart';
import 'social_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CashHelper.init();
  await Hive.initFlutter();
  await HomeDbService.initDataBase();
  setubGetIt();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.grey));

  runApp(SocialApp(appRouter: AppRouter()));
}
