import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:dio/dio.dart';

extension ApiErrorX on DioError {
  ApiResponse<T> getErrorMessage<T>() {
    try {
      return ApiResponse.error(
        error: response?.data['title'] ?? 'Unknown error',
      );
    } catch (e) {
      return ApiResponse.error(error: toString());
    }
  }
}

extension StringValueX on String {
  bool get isURL {
    // using regex to check if the string is a valid url

    final regex = RegExp(
      r'^[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
    );

    return regex.hasMatch(this);
  }

  bool get isNumber {
    final RegExp regex = RegExp(r'^\d+(\.\d+)?$');
    return regex.hasMatch(this);
  }

  bool get isPhoneNumber {
    final RegExp regex = RegExp(r'^(84|0[3|5|7|8|9])+([0-9]{8})\b');
    return regex.hasMatch(this);
  }

  bool get isSignedNumber {
    final RegExp regex = RegExp(r'^[+]?\d+$');
    return regex.hasMatch(this);
  }

  bool get isCarLicensePlate {
    final RegExp regex = RegExp(r'^[0-9]{2}[A-Z0-9]{2}.[0-9]{4,5}$');
    return regex.hasMatch(this);
  }
}
