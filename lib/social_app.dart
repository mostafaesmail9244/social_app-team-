import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/core/router/app_router.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'core/helper/cash_helper/cash_helper.dart';
import 'core/style/app_colors.dart';

class SocialApp extends StatelessWidget {
  final AppRouter appRouter;
  const SocialApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0,
            surfaceTintColor: Colors.white,
          ),
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: CashHelper.get(key: CashConstants.userId) != null
            ? Routes.layoutView
            : Routes.loginView,
      ),
    );
  }
}
