import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../data/model/specializations_response_model.dart';

class SpecialityListVeiwItem extends StatelessWidget {
  const SpecialityListVeiwItem({
    super.key,
    required this.index,
    required this.specialization,
    required this.isSelected,
  });

  final int index;
  final SpecializationsData? specialization;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
      child: Column(
        children: [
          Container(
            decoration: isSelected
                ? BoxDecoration(
                    border: Border.all(color: AppColors.darkBlue),
                    shape: BoxShape.circle,
                  )
                : null,

            child: CircleAvatar(
              radius: 28.r,
              backgroundColor: AppColors.lightBlue,
              child: SvgPicture.asset(
                'assets/svgs/general_speciality.svg',
                width: isSelected ? 30.w : 24.w,
                height: isSelected ? 38.h : 32.h,
              ),
            ),
          ),
          verticalSpacing(isSelected ? 5 : 8),
          Text(
            specialization!.name ?? '',
            style: AppTextStyles.font12DarkBlueRegular().copyWith(
              fontWeight: isSelected ? FontWeightHelper.bold : null,
              fontSize: isSelected ? 14.sp : null,
            ),
          ),
        ],
      ),
    );
  }
}
