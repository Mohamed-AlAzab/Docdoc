import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../data/model/specializations_response_model.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({super.key, required this.doctorsModel});

  final Doctors? doctorsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl:
                  'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, progress) =>
                  CircularProgressIndicator(value: progress.progress),
              errorWidget: (context, url, error) => SvgPicture.asset(
                'assets/svgs/general_speciality.svg',
                width: 24.w,
                height: 32.h,
              ),
            ),
          ),
          horizontalSpacing(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: AppTextStyles.font18DarkBlueBold(),
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppTextStyles.font12GrayMedium(),
                ),
                verticalSpacing(5),
                Text(
                  doctorsModel?.email ?? '',
                  style: AppTextStyles.font12GrayMedium(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
