import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theme/app_colors.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListVeiw extends StatelessWidget {
  const DoctorSpecialityListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    width: 24.w,
                    height: 32.h,
                  ),
                ),
                verticalSpacing(8),
                Text(
                  'Speciality',
                  style: AppTextStyles.font12DarkBlueRegular(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
