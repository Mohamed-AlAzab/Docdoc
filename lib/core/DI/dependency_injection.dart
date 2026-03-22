import 'package:dio/dio.dart';
import 'package:flutter_advanced/core/networking/api_service.dart';
import 'package:flutter_advanced/core/networking/dio_factory.dart';
import 'package:flutter_advanced/features/auth/data/repo/auth_repo_impl.dart';
import 'package:flutter_advanced/features/auth/domain/auth_repo.dart';
import 'package:flutter_advanced/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/cubit/sign_up/sign_up_cubit.dart';
import 'package:flutter_advanced/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_advanced/features/home/domain/home_repo.dart';
import 'package:flutter_advanced/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/api/home_api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Auth
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  // Login
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // SignUp
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
