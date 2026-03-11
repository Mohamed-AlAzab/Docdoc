import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/app_colors.dart';
import 'package:flutter_advanced/core/theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24BlackBold() {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font32BlueBold() {
    return TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.primry,
    );
  }

  static TextStyle font24BlueBold() {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.primry,
    );
  }

  static TextStyle font16WhiteSemiBold() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font14BlueSemiBold() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.primry,
    );
  }

  static TextStyle font13BlueSemiBold() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.primry,
    );
  }

  static TextStyle font15DarkBlueMedium() {
    return TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.darkBlue,
    );
  }

  static TextStyle font14DarkBlueMedium() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.darkBlue,
    );
  }

  static TextStyle font13DarkBlueMedium() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.darkBlue,
    );
  }

  static TextStyle font16WhiteMedium() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.white,
    );
  }

  static TextStyle font13DarkBlueRegular() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.darkBlue,
    );
  }

  static TextStyle font14GrayRegular() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.gray,
    );
  }

  static TextStyle font14LightGrayRegular() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.lightGray,
    );
  }

  static TextStyle font13GrayRegular() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.gray,
    );
  }

  static TextStyle font13BlueRegular() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.primry,
    );
  }
}
