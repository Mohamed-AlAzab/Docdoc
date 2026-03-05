import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: router.generateRoute,
        );
      },
    );
  }
}
