import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/specializations_response_model.dart';
import 'speciality_list_veiw_item.dart';

class SpecialityListVeiw extends StatefulWidget {
  const SpecialityListVeiw({super.key, required this.specializationDataList});

  final List<SpecializationsData?> specializationDataList;

  @override
  State<SpecialityListVeiw> createState() => _SpecialityListVeiwState();
}

class _SpecialityListVeiwState extends State<SpecialityListVeiw> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() => selectedSpecializationIndex = index);
              context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializationDataList[index]?.id,
              );
            },
            child: SpecialityListVeiwItem(
              index: index,
              specialization: widget.specializationDataList[index],
              isSelected: selectedSpecializationIndex == index,
            ),
          );
        },
      ),
    );
  }
}
