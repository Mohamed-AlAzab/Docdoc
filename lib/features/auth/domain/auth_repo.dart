import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_advanced/features/auth/data/model/login_request_body.dart';
import 'package:flutter_advanced/features/auth/data/model/login_response.dart';
import 'package:flutter_advanced/features/auth/data/model/sign_up_request_body.dart';
import 'package:flutter_advanced/features/auth/data/model/sign_up_response.dart';

abstract class AuthRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody);
  Future<ApiResult<SignUpResponse>> signup(SignUpRequestBody signUpRequestBody);
}
