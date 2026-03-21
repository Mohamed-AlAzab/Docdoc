import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/core/theme/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAndScheduleWithDoctorCard extends StatelessWidget {
  const BookAndScheduleWithDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 207.h,
      child: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 18.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/background_book_and_schedule_with_doctor_card.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppTextStyles.font18WhiteMedium().copyWith(
                    height: 1.6,
                  ),
                ),
                verticalSpacing(15),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(48.r),
                      ),
                    ),
                    child: Text(
                      'Find Doctors',
                      style: AppTextStyles.font12BlueRegular(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 4.w,
            top: 0,
            child: Image.asset(
              'assets/images/home_doctor.png',
              width: 207.w,
              height: 208.h,
            ),
          ),
        ],
      ),
    );
  }
}
