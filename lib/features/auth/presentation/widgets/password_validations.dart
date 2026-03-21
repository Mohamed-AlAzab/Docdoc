import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theme/app_colors.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidatorRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpacing(2),
        buildValidatorRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpacing(2),
        buildValidatorRow(
          'At least 1 special characters',
          hasSpecialCharacters,
        ),
        verticalSpacing(2),
        buildValidatorRow('At least 1 number', hasNumber),
        verticalSpacing(2),
        buildValidatorRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidatorRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: Colors.grey),
        horizontalSpacing(6),
        Text(
          text,
          style: AppTextStyles.font13DarkBlueRegular().copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationThickness: 2,
            decorationColor: Colors.green,
            color: hasValidated ? AppColors.gray : AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
