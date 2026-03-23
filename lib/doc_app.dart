import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/app_colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.router});

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.primry,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: isLoggedIn
              ? Routes.homeScreen
              : Routes.onBoardingScreen,
          onGenerateRoute: router.generateRoute,
        );
      },
    );
  }
}
