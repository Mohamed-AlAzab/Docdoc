import 'package:flutter/widgets.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_advanced/features/auth/data/model/login_request_body.dart';
import 'package:flutter_advanced/features/auth/domain/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;
  LoginCubit(this._authRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _authRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
