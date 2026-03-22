import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/book_and_schedule_with_doctor_card.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/see_all.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/specialization_and_doctors_bloc_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(userName: 'Mohamed AlAzab'),
              const BookAndScheduleWithDoctorCard(),
              verticalSpacing(24),
              const SeeAll(title: 'Doctor Speciality'),
              verticalSpacing(12),
              SpecializationAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
