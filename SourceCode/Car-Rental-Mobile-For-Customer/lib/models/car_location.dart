import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_location.freezed.dart';
part 'car_location.g.dart';

@freezed
class CarLocation with _$CarLocation {
  const factory CarLocation({
    required String id,
    required double longitude,
    required double latitude,
  }) = _CarLocation;

  factory CarLocation.fromJson(Map<String, dynamic> json) =>
      _$CarLocationFromJson(json);
}
