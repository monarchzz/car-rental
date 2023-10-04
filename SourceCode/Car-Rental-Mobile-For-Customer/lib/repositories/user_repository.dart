import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class UserRepository {
  UserRepository({
    required this.dio,
  });

  final Dio dio;

  Future<User?> getProfile() async {
    // if (user != null) return user;
    try {
      final result = await dio.get<Map<String, dynamic>>('auth/customers');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = User.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<ApiResponse<String?>> selfUpdate({
    required String id,
    String? name,
    String? address,
    String? phone,
    Gender? gender,
  }) async {
    try {
      final result = await dio.put<JsonObject>('customers/$id', data: {
        'name': name,
        'address': address,
        'phone': phone,
        'gender': gender?.getDisplayName(),
      });

      if (result.data != null) {
        return const ApiResponse.success(null);
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<String?>> uploadLicense({
    required List<XFile> images,
  }) async {
    try {
      List<MultipartFile> licenses = [];
      for (final image in images) {
        final file = await MultipartFile.fromFile(image.path);
        licenses.add(file);
      }

      final formData = FormData.fromMap({
        'files': licenses,
      });

      final result = await dio.put<dynamic>(
        'customers/licenses',
        data: formData,
        options: Options(
          contentType: Headers.multipartFormDataContentType,
        ),
      );

      if (result.statusCode == StatusCodes.status200OK) {
        return const ApiResponse.success(null);
      }

      return const ApiResponse.error(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
