// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarSearchFilter {
  CarTypeEnum? get carType => throw _privateConstructorUsedError;
  TransmissionEnum? get transmission => throw _privateConstructorUsedError;
  bool get isDiscounted => throw _privateConstructorUsedError;
  ProductionCompany? get productionCompany =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarSearchFilterCopyWith<CarSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchFilterCopyWith<$Res> {
  factory $CarSearchFilterCopyWith(
          CarSearchFilter value, $Res Function(CarSearchFilter) then) =
      _$CarSearchFilterCopyWithImpl<$Res, CarSearchFilter>;
  @useResult
  $Res call(
      {CarTypeEnum? carType,
      TransmissionEnum? transmission,
      bool isDiscounted,
      ProductionCompany? productionCompany});

  $ProductionCompanyCopyWith<$Res>? get productionCompany;
}

/// @nodoc
class _$CarSearchFilterCopyWithImpl<$Res, $Val extends CarSearchFilter>
    implements $CarSearchFilterCopyWith<$Res> {
  _$CarSearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carType = freezed,
    Object? transmission = freezed,
    Object? isDiscounted = null,
    Object? productionCompany = freezed,
  }) {
    return _then(_value.copyWith(
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeEnum?,
      transmission: freezed == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as TransmissionEnum?,
      isDiscounted: null == isDiscounted
          ? _value.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
      productionCompany: freezed == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductionCompanyCopyWith<$Res>? get productionCompany {
    if (_value.productionCompany == null) {
      return null;
    }

    return $ProductionCompanyCopyWith<$Res>(_value.productionCompany!, (value) {
      return _then(_value.copyWith(productionCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarSearchFilterCopyWith<$Res>
    implements $CarSearchFilterCopyWith<$Res> {
  factory _$$_CarSearchFilterCopyWith(
          _$_CarSearchFilter value, $Res Function(_$_CarSearchFilter) then) =
      __$$_CarSearchFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CarTypeEnum? carType,
      TransmissionEnum? transmission,
      bool isDiscounted,
      ProductionCompany? productionCompany});

  @override
  $ProductionCompanyCopyWith<$Res>? get productionCompany;
}

/// @nodoc
class __$$_CarSearchFilterCopyWithImpl<$Res>
    extends _$CarSearchFilterCopyWithImpl<$Res, _$_CarSearchFilter>
    implements _$$_CarSearchFilterCopyWith<$Res> {
  __$$_CarSearchFilterCopyWithImpl(
      _$_CarSearchFilter _value, $Res Function(_$_CarSearchFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carType = freezed,
    Object? transmission = freezed,
    Object? isDiscounted = null,
    Object? productionCompany = freezed,
  }) {
    return _then(_$_CarSearchFilter(
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeEnum?,
      transmission: freezed == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as TransmissionEnum?,
      isDiscounted: null == isDiscounted
          ? _value.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
      productionCompany: freezed == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany?,
    ));
  }
}

/// @nodoc

class _$_CarSearchFilter implements _CarSearchFilter {
  const _$_CarSearchFilter(
      {this.carType,
      this.transmission,
      this.isDiscounted = false,
      this.productionCompany});

  @override
  final CarTypeEnum? carType;
  @override
  final TransmissionEnum? transmission;
  @override
  @JsonKey()
  final bool isDiscounted;
  @override
  final ProductionCompany? productionCompany;

  @override
  String toString() {
    return 'CarSearchFilter(carType: $carType, transmission: $transmission, isDiscounted: $isDiscounted, productionCompany: $productionCompany)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarSearchFilter &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission) &&
            (identical(other.isDiscounted, isDiscounted) ||
                other.isDiscounted == isDiscounted) &&
            (identical(other.productionCompany, productionCompany) ||
                other.productionCompany == productionCompany));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, carType, transmission, isDiscounted, productionCompany);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarSearchFilterCopyWith<_$_CarSearchFilter> get copyWith =>
      __$$_CarSearchFilterCopyWithImpl<_$_CarSearchFilter>(this, _$identity);
}

abstract class _CarSearchFilter implements CarSearchFilter {
  const factory _CarSearchFilter(
      {final CarTypeEnum? carType,
      final TransmissionEnum? transmission,
      final bool isDiscounted,
      final ProductionCompany? productionCompany}) = _$_CarSearchFilter;

  @override
  CarTypeEnum? get carType;
  @override
  TransmissionEnum? get transmission;
  @override
  bool get isDiscounted;
  @override
  ProductionCompany? get productionCompany;
  @override
  @JsonKey(ignore: true)
  _$$_CarSearchFilterCopyWith<_$_CarSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
