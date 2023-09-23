// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promotion _$$_PromotionFromJson(Map<String, dynamic> json) => _$_Promotion(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      expiryAt: json['expiryAt'] == null
          ? null
          : DateTime.parse(json['expiryAt'] as String),
    );

Map<String, dynamic> _$$_PromotionToJson(_$_Promotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount,
      'createAt': instance.createAt?.toIso8601String(),
      'expiryAt': instance.expiryAt?.toIso8601String(),
    };
