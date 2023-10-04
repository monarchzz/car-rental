// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarLocation _$$_CarLocationFromJson(Map<String, dynamic> json) =>
    _$_CarLocation(
      id: json['id'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CarLocationToJson(_$_CarLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
