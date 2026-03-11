import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/DI/dependency_injection.dart';
import 'package:flutter_advanced/core/routing/app_router.dart';
import 'package:flutter_advanced/doc_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(DocApp(router: AppRouter()));
}
  