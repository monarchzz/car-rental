// like car_repository.dart, generate promotion_repository.dart
// using Dio
// has 2 methods:
// - getPromotions
// - getPromotionById

import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/pagination.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:dio/dio.dart';

class PromotionRepository {
  PromotionRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<PaginationResult<Promotion>>> promotions({
    required int pageNumber,
    required int pageSize,
    String? name,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        'pageNumber': pageNumber - 1,
        'pageSize': pageSize,
        'isAvailable': true,
      };

      if (name != null) {
        queryParameters['name'] = name;
      }

      final result = await dio.get<JsonObject>(
        'promotions',
        queryParameters: queryParameters,
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Promotion>.fromJson(
            result.data!,
            (json) => Promotion.fromJson(json as JsonObject),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<Promotion>(
          data: [],
          pagination: Pagination(
            pageNumber: 0,
            pageSize: 0,
            totalRow: 0,
          ),
        ),
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Promotion>> promotionById(String id) async {
    try {
      final result = await dio.get<JsonObject>(
        'promotions/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Promotion.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
