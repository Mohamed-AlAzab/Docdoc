import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/styles.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/doc_logo.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/doctor_image_and_text.dart';
import 'package:flutter_advanced/features/onboarding/presentation/widgets/gat_stated_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogo(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GrayRegular,
                      ),
                      SizedBox(height: 30.h),
                      GatStatedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
