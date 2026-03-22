import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../widgets/doctor_speciality_list_veiw.dart';
import '../widgets/doctor_list_view.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationDataList =
                specializationsResponseModel.specializationDataList;
            return setupSuccess(specializationDataList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () => SizedBox.fromSize(),
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
      height: 100.h,
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget setupSuccess(specializationDataList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListVeiw(
            specializationDataList: specializationDataList ?? [],
          ),
          verticalSpacing(24),
          DoctorListView(doctorsList: specializationDataList?[0]?.doctorsList),
        ],
      ),
    );
  }

  Widget setupError() {
    return SizedBox.fromSize();
  }
}
