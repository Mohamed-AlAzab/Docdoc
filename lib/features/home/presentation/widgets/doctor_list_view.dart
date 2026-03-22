import 'package:flutter/material.dart';

import '../../data/model/specializations_response_model.dart';
import 'doctor_list_view_item.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key, this.doctorsList});

  final List<Doctors?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorsModel: doctorsList?[index]);
        },
      ),
    );
  }
}
