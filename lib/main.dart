import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/DI/dependency_injection.dart';
import 'package:flutter_advanced/core/helpers/constants.dart';
import 'package:flutter_advanced/core/helpers/shared_preferences_helper.dart';
import 'package:flutter_advanced/core/helpers/string_and_list_extention.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  // SharedPrefHelper.clearAllSecuredData();
  await checkIfLoggedInUser();
  runApp(DocApp(router: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  debugPrint('User Token: $userToken');
  if (!userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
