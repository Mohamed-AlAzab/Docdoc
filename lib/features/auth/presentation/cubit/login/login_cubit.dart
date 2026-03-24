import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/core/networking/api_error_model.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../../../core/helpers/shared_preferences_helper.dart';
import '../../../../../core/networking/dio_factory.dart';
import '../../../data/model/login_request_body.dart';
import '../../../domain/auth_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;
  LoginCubit(this._authRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _authRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
