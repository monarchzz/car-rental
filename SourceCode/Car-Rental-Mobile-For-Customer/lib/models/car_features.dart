import 'package:car_rental_for_customer/models/enums/car_feature.dart';
import 'package:car_rental_for_customer/models/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_features.freezed.dart';
part 'car_features.g.dart';

@freezed
class CarFeatureModel with _$CarFeatureModel {
  const factory CarFeatureModel({
    String? description,
    required Feature feature,
  }) = _CarFeatureModel;

  factory CarFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$CarFeatureModelFromJson(json);
}
