import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/DI/dependency_injection.dart';
import 'package:flutter_advanced/core/helpers/constants.dart';
import 'package:flutter_advanced/core/helpers/shared_preferences_helper.dart';
import 'package:flutter_advanced/core/helpers/string_extention.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(router: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isEmptyOrNull()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
