import 'package:flutter_advanced/core/networking/api_error_handler.dart';
import 'package:flutter_advanced/core/networking/api_result.dart';
import 'package:flutter_advanced/features/home/data/api/home_api_service.dart';
import 'package:flutter_advanced/features/home/data/model/specializations_response_model.dart';
import 'package:flutter_advanced/features/home/domain/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeApiService homeApiService;

  HomeRepoImpl(this.homeApiService);

  @override
  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await homeApiService.getSpecializationsData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
