import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/production_company.dart';
import 'package:dio/dio.dart';

class CarRepository {
  CarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<PaginationResult<Car>>> carSearch({
    double? longitude,
    double? latitude,
    bool? hasDriver,
    CarTypeEnum? carType,
    TransmissionEnum? transmissionType,
    DateTime? startTime,
    DateTime? endTime,
    int? distance,
    ProductionCompany? productionCompany,
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        'pageNumber': pageNumber - 1,
        'pageSize': pageSize,
        'isAvailable': true,
      };

      if (productionCompany != null) {
        queryParameters['productionCompanyId'] = productionCompany.id;
      }

      queryParameters['distance'] = distance ?? 5;

      if (longitude != null && latitude != null) {
        queryParameters['location.longitude'] = longitude;
        queryParameters['location.latitude'] = latitude;
      }

      if (hasDriver != null) {
        queryParameters['hasDriver'] = hasDriver;
      }

      if (carType != null) {
        queryParameters['carType'] = carType.name;
      }
      if (transmissionType != null) {
        queryParameters['transmissionType'] = transmissionType.name;
      }

      final currentDate = DateTime.now();
      final defaultStartDate = DateTime(
        currentDate.year,
        currentDate.month,
        currentDate.day,
        currentDate.hour + 2,
        currentDate.minute,
        0,
        0,
        0,
      );

      queryParameters['startTime'] =
          startTime?.toIso8601String() ?? defaultStartDate.toIso8601String();
      queryParameters['endTime'] = endTime?.toIso8601String() ??
          defaultStartDate.add(const Duration(days: 1)).toIso8601String();

      if (startTime != null && endTime != null) {}

      final result = await dio.get<JsonObject>(
        'cars',
        queryParameters: queryParameters,
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Car>.fromJson(
            result.data!,
            (object) => Car.fromJson(object as JsonObject),
          ),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> carById(String carId) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/$carId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<List<Car>>> carByCarOwner({
    required String carOwnerId,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/for-car-owners/$carOwnerId',
        queryParameters: {
          'pageNumber': 0,
          'pageSize': 1000,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final paginationResult = PaginationResult<Car>.fromJson(
          result.data!,
          (object) => Car.fromJson(object as JsonObject),
        );

        // final cars = paginationResult.data
        //     .where((element) => element.carOwner?.id == carOwnerId)
        //     .toList();

        final cars = paginationResult.data;

        return ApiSuccess(cars);
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
