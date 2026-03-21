import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/navigation_extention.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppTextStyles.font13DarkBlueRegular(),
          ),
          TextSpan(
            text: ' Sign In',
            style: AppTextStyles.font13BlueSemiBold(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
