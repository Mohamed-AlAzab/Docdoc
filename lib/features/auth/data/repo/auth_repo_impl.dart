import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_advanced/core/networking/api_service.dart';
import 'package:flutter_advanced/features/auth/data/model/login_request_body.dart';
import 'package:flutter_advanced/features/auth/data/model/login_response.dart';
import 'package:flutter_advanced/features/auth/data/model/sign_up_request_body.dart';
import 'package:flutter_advanced/features/auth/data/model/sign_up_response.dart';
import 'package:flutter_advanced/features/auth/domain/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      var result = await _apiService.login(loginRequestBody);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<SignUpResponse>> signup(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      var result = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
