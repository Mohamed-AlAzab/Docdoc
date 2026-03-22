import '../../../core/networking/api_result.dart';
import '../data/model/specializations_response_model.dart';

abstract class HomeRepo {
  Future<ApiResult<SpecializationsResponseModel>> getSpecializations();
}
