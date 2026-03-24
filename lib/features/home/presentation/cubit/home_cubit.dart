import 'package:flutter_advanced/core/helpers/extention.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/model/specializations_response_model.dart';
import '../../domain/home_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationsSuccess(specializationsList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = filterSpecializationListById(
      specializationId,
    );

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ApiErrorHandler.handle('No Doctos found')));
    }
  }

  List<Doctors?>? filterSpecializationListById(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
