import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/specializations_response_model.dart';
import 'doctor_speciality_list_veiw_item.dart';

class DoctorSpecialityListVeiw extends StatelessWidget {
  const DoctorSpecialityListVeiw({
    super.key,
    required this.specializationDataList,
  });

  final List<SpecializationsData?> specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListVeiwItem(
            index: index,
            specialization: specializationDataList[index],
          );
        },
      ),
    );
  }
}
