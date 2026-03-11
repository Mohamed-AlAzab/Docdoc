import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/DI/dependency_injection.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter_advanced/features/home/home_screen.dart';
import 'package:flutter_advanced/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defind for ${settings.name}')),
          ),
        );
    }
  }
}
