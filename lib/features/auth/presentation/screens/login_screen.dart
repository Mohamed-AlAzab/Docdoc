import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/dont_have_account_text.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/email_and_password.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 30.h,
              vertical: 30.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wellcom Back', style: AppTextStyles.font24BlueBold()),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyles.font14GrayRegular(),
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpacing(24),
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyles.font13BlueRegular(),
                      ),
                    ),
                    verticalSpacing(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: AppTextStyles.font16WhiteSemiBold(),
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(48),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
