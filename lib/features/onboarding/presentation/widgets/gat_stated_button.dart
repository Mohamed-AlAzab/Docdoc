import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/navigation_extention.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/core/theme/app_colors.dart';
import 'package:flutter_advanced/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GatStatedButton extends StatelessWidget {
  const GatStatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pushName(Routes.loginScreen),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primry),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16.r),
          ),
        ),
      ),
      child: Text('Get Stated', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
