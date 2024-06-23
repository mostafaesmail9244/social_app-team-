import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/bloc_observer.dart';
import 'package:social_app/core/constants/constants.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/core/helper/cach_helper.dart';
import 'package:social_app/core/router/app_router.dart';
import 'package:social_app/core/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.grey,
  ));
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();

  setubGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: CacheHelper.getData(key: Constants.uId) != null
              ? Routes.layoutScreen
              : Routes.loginScreen,
          home: child,
        );
      },
    );
  }
}
