import 'dart:async';

import 'package:car_rental_for_customer/commons/constants/authentication.dart';
import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/authentication_result.dart';
import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository({
    required this.dio,
    required this.sharedPreferences,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;

  final StreamController<AuthenticationStatus> _authenticationController =
      StreamController<AuthenticationStatus>.broadcast();

  Stream<AuthenticationStatus> get status async* {
    final token = sharedPreferences.getString(accessTokenRefs);
    if (token != null && token.isNotEmpty) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }

    yield* _authenticationController.stream;
  }

  Future<ApiResponse<bool>> login(String username, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        'auth/customers',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = AuthenticationResult.fromJson(result.data!);

        // save token
        await sharedPreferences.setString(accessTokenRefs, auth.token);
        // await sharedPreferences.setString(
        //   refreshTokenRefs,
        //   auth.refreshToken,
        // );

        // update auth status
        _authenticationController.add(AuthenticationStatus.authenticated);

        return const ApiResponse.success(true);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<bool>> signUp({
    required String username,
    required String password,
    required String name,
    required String phone,
    required Gender gender,
    String? address,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        'customers',
        data: {
          'username': username.toLowerCase().trim(),
          'password': password.toLowerCase().trim(),
          'name': name,
          'phone': phone,
          'gender': gender.getDisplayName(),
          'address': address,
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return await login(username, password);
      }

      return const ApiError(error: 'Unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  // Future<ApiResponse<bool>> changePassword({
  //   required String currentPassword,
  //   required String newPassword,
  // }) async {
  //   try {
  //     final result = await dio.put<dynamic>(
  //       '/auth/change-password',
  //       data: {
  //         'password': currentPassword,
  //         'newPassword': newPassword,
  //       },
  //     );
  //     if (result.data != null &&
  //         result.statusCode == StatusCodes.status204NoContent) {
  //       return const ApiResponse.success(true);
  //     }
  //
  //     return const ApiError(error: 'Unknown error');
  //   } on DioError catch (e) {
  //     if (e.response?.statusCode == StatusCodes.status400BadRequest) {
  //       return const ApiResponse.error(error: 'Invalid password');
  //     } else {
  //       return e.getErrorMessage();
  //     }
  //   }
  // }

  Future<void> logOut() async {
    _authenticationController.add(AuthenticationStatus.unauthenticated);

    await sharedPreferences.setString(accessTokenRefs, '');
    await sharedPreferences.setString(
      refreshTokenRefs,
      '',
    );
  }

  Future<void> dispose() async {
    await _authenticationController.close();
  }
}
