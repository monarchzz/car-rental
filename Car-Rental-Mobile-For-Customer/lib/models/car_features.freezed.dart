// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarFeatureModel _$CarFeatureModelFromJson(Map<String, dynamic> json) {
  return _CarFeatureModel.fromJson(json);
}

/// @nodoc
mixin _$CarFeatureModel {
  String? get description => throw _privateConstructorUsedError;
  Feature get feature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarFeatureModelCopyWith<CarFeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarFeatureModelCopyWith<$Res> {
  factory $CarFeatureModelCopyWith(
          CarFeatureModel value, $Res Function(CarFeatureModel) then) =
      _$CarFeatureModelCopyWithImpl<$Res, CarFeatureModel>;
  @useResult
  $Res call({String? description, Feature feature});

  $FeatureCopyWith<$Res> get feature;
}

/// @nodoc
class _$CarFeatureModelCopyWithImpl<$Res, $Val extends CarFeatureModel>
    implements $CarFeatureModelCopyWith<$Res> {
  _$CarFeatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? feature = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      feature: null == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res> get feature {
    return $FeatureCopyWith<$Res>(_value.feature, (value) {
      return _then(_value.copyWith(feature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarFeatureModelCopyWith<$Res>
    implements $CarFeatureModelCopyWith<$Res> {
  factory _$$_CarFeatureModelCopyWith(
          _$_CarFeatureModel value, $Res Function(_$_CarFeatureModel) then) =
      __$$_CarFeatureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, Feature feature});

  @override
  $FeatureCopyWith<$Res> get feature;
}

/// @nodoc
class __$$_CarFeatureModelCopyWithImpl<$Res>
    extends _$CarFeatureModelCopyWithImpl<$Res, _$_CarFeatureModel>
    implements _$$_CarFeatureModelCopyWith<$Res> {
  __$$_CarFeatureModelCopyWithImpl(
      _$_CarFeatureModel _value, $Res Function(_$_CarFeatureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? feature = null,
  }) {
    return _then(_$_CarFeatureModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      feature: null == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarFeatureModel implements _CarFeatureModel {
  const _$_CarFeatureModel({this.description, required this.feature});

  factory _$_CarFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarFeatureModelFromJson(json);

  @override
  final String? description;
  @override
  final Feature feature;

  @override
  String toString() {
    return 'CarFeatureModel(description: $description, feature: $feature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarFeatureModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.feature, feature) || other.feature == feature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, feature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarFeatureModelCopyWith<_$_CarFeatureModel> get copyWith =>
      __$$_CarFeatureModelCopyWithImpl<_$_CarFeatureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarFeatureModelToJson(
      this,
    );
  }
}

abstract class _CarFeatureModel implements CarFeatureModel {
  const factory _CarFeatureModel(
      {final String? description,
      required final Feature feature}) = _$_CarFeatureModel;

  factory _CarFeatureModel.fromJson(Map<String, dynamic> json) =
      _$_CarFeatureModel.fromJson;

  @override
  String? get description;
  @override
  Feature get feature;
  @override
  @JsonKey(ignore: true)
  _$$_CarFeatureModelCopyWith<_$_CarFeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
