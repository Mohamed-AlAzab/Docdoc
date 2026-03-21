import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';
import 'package:flutter_advanced/core/widgets/app_text_button.dart';
import 'package:flutter_advanced/features/auth/presentation/cubit/sign_up/sign_up_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/Sign_up_form.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/already_have_account_text.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:flutter_advanced/features/auth/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Text('Create Account', style: AppTextStyles.font24BlueBold()),
                verticalSpacing(8),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: AppTextStyles.font14GrayRegular(),
                ),
                verticalSpacing(24),
                Column(
                  children: [
                    SignUpForm(),
                    verticalSpacing(40),
                    AppTextButton(
                      buttonText: 'Create Account',
                      textStyle: AppTextStyles.font16WhiteSemiBold(),
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(48),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpState();
    }
  }
}
