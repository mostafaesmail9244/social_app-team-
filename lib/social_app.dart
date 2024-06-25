import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/core/router/app_router.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'core/helper/cash_helper/cash_helper.dart';

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});
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
          initialRoute: CashHelper.get(key: CashConstants.userId) != null
              ? Routes.layoutScreen
              : Routes.loginScreen,
          home: child,
        );
      },
    );
  }
}
