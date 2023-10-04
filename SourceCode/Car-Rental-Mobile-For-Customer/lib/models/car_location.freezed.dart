// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarLocation _$CarLocationFromJson(Map<String, dynamic> json) {
  return _CarLocation.fromJson(json);
}

/// @nodoc
mixin _$CarLocation {
  String get id => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarLocationCopyWith<CarLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarLocationCopyWith<$Res> {
  factory $CarLocationCopyWith(
          CarLocation value, $Res Function(CarLocation) then) =
      _$CarLocationCopyWithImpl<$Res, CarLocation>;
  @useResult
  $Res call({String id, double longitude, double latitude});
}

/// @nodoc
class _$CarLocationCopyWithImpl<$Res, $Val extends CarLocation>
    implements $CarLocationCopyWith<$Res> {
  _$CarLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarLocationCopyWith<$Res>
    implements $CarLocationCopyWith<$Res> {
  factory _$$_CarLocationCopyWith(
          _$_CarLocation value, $Res Function(_$_CarLocation) then) =
      __$$_CarLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double longitude, double latitude});
}

/// @nodoc
class __$$_CarLocationCopyWithImpl<$Res>
    extends _$CarLocationCopyWithImpl<$Res, _$_CarLocation>
    implements _$$_CarLocationCopyWith<$Res> {
  __$$_CarLocationCopyWithImpl(
      _$_CarLocation _value, $Res Function(_$_CarLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_CarLocation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarLocation implements _CarLocation {
  const _$_CarLocation(
      {required this.id, required this.longitude, required this.latitude});

  factory _$_CarLocation.fromJson(Map<String, dynamic> json) =>
      _$$_CarLocationFromJson(json);

  @override
  final String id;
  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'CarLocation(id: $id, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarLocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarLocationCopyWith<_$_CarLocation> get copyWith =>
      __$$_CarLocationCopyWithImpl<_$_CarLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarLocationToJson(
      this,
    );
  }
}

abstract class _CarLocation implements CarLocation {
  const factory _CarLocation(
      {required final String id,
      required final double longitude,
      required final double latitude}) = _$_CarLocation;

  factory _CarLocation.fromJson(Map<String, dynamic> json) =
      _$_CarLocation.fromJson;

  @override
  String get id;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_CarLocationCopyWith<_$_CarLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
