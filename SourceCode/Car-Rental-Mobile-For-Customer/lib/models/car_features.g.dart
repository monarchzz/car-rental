// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarFeatureModel _$$_CarFeatureModelFromJson(Map<String, dynamic> json) =>
    _$_CarFeatureModel(
      description: json['description'] as String?,
      feature: Feature.fromJson(json['feature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarFeatureModelToJson(_$_CarFeatureModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'feature': instance.feature,
    };
