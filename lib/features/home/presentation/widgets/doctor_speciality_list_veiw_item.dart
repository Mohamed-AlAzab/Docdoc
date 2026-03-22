import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../data/model/specializations_response_model.dart';

class DoctorSpecialityListVeiwItem extends StatelessWidget {
  const DoctorSpecialityListVeiwItem({
    super.key,
    required this.index,
    required this.specialization,
  });

  final int index;
  final SpecializationsData? specialization;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            specialization!.name ?? '',
            style: AppTextStyles.font12DarkBlueRegular(),
          ),
        ],
      ),
    );
  }
}
