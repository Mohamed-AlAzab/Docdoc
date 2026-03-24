import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/spacing.dart';
import 'package:flutter_advanced/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/doctos_list/doctors_shimmer_loading.dart';
import 'package:flutter_advanced/features/home/presentation/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'speciality_list_veiw.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

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
          specializationsSuccess: (specializationsDataList) {
            return setupSuccess(specializationsDataList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () => SizedBox.fromSize(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpacing(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationDataList) {
    return SpecialityListVeiw(
      specializationDataList: specializationDataList ?? [],
    );
  }

  Widget setupError() {
    return SizedBox.fromSize();
  }
}
