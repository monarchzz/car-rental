import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.env['BASE_URL'] ?? '';
const int connectTimeout = 30000;
const int receiveTimeout = 30000;
const int sendTimeout = 30000;

mixin StatusCodes {
  static const int status200OK = 200;
  static const int status201Created = 201;
  static const int status204NoContent = 204;
  static const int status400BadRequest = 400;
  static const int status401Unauthorized = 401;
  static const int status402PaymentRequired = 402;
  static const int status403Forbidden = 403;
  static const int status404NotFound = 404;
  static const int status409Conflict = 409;
}
