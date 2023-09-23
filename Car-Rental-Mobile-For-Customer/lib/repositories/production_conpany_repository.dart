import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/production_company.dart';
import 'package:dio/dio.dart';

class ProductionCompanyRepository {
  ProductionCompanyRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<List<ProductionCompany>>> allCompanies() async {
    try {
      final queryParameters = <String, dynamic>{
        'pageNumber': 0,
        'pageSize': 1000,
      };

      final result = await dio.get<JsonObject>(
        'production-companies',
        queryParameters: queryParameters,
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final pagingResult = PaginationResult<ProductionCompany>.fromJson(
          result.data!,
          (object) => ProductionCompany.fromJson(object as JsonObject),
        );

        return ApiResponse.success(pagingResult.data);
      }
      return const ApiSuccess([]);
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
