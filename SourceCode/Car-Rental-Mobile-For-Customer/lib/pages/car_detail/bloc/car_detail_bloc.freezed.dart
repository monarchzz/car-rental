// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude)
        started,
    required TResult Function(CarAddressType carAddressType) addressTypeChanged,
    required TResult Function(Promotion? promotion) promotionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult? Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult? Function(Promotion? promotion)? promotionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult Function(Promotion? promotion)? promotionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RentalCarTypeChanged value) addressTypeChanged,
    required TResult Function(_PromotionChanged value) promotionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult? Function(_PromotionChanged value)? promotionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult Function(_PromotionChanged value)? promotionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDetailEventCopyWith<$Res> {
  factory $CarDetailEventCopyWith(
          CarDetailEvent value, $Res Function(CarDetailEvent) then) =
      _$CarDetailEventCopyWithImpl<$Res, CarDetailEvent>;
}

/// @nodoc
class _$CarDetailEventCopyWithImpl<$Res, $Val extends CarDetailEvent>
    implements $CarDetailEventCopyWith<$Res> {
  _$CarDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String carId,
      String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarDetailEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_Started(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.carId,
      this.address,
      this.startDate,
      this.endDate,
      this.latitude,
      this.longitude});

  @override
  final String carId;
  @override
  final String? address;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'CarDetailEvent.started(carId: $carId, address: $address, startDate: $startDate, endDate: $endDate, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, carId, address, startDate, endDate, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude)
        started,
    required TResult Function(CarAddressType carAddressType) addressTypeChanged,
    required TResult Function(Promotion? promotion) promotionChanged,
  }) {
    return started(carId, address, startDate, endDate, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult? Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult? Function(Promotion? promotion)? promotionChanged,
  }) {
    return started?.call(
        carId, address, startDate, endDate, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult Function(Promotion? promotion)? promotionChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(carId, address, startDate, endDate, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RentalCarTypeChanged value) addressTypeChanged,
    required TResult Function(_PromotionChanged value) promotionChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult? Function(_PromotionChanged value)? promotionChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult Function(_PromotionChanged value)? promotionChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarDetailEvent {
  const factory _Started(
      {required final String carId,
      final String? address,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? latitude,
      final double? longitude}) = _$_Started;

  String get carId;
  String? get address;
  DateTime? get startDate;
  DateTime? get endDate;
  double? get latitude;
  double? get longitude;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RentalCarTypeChangedCopyWith<$Res> {
  factory _$$_RentalCarTypeChangedCopyWith(_$_RentalCarTypeChanged value,
          $Res Function(_$_RentalCarTypeChanged) then) =
      __$$_RentalCarTypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CarAddressType carAddressType});
}

/// @nodoc
class __$$_RentalCarTypeChangedCopyWithImpl<$Res>
    extends _$CarDetailEventCopyWithImpl<$Res, _$_RentalCarTypeChanged>
    implements _$$_RentalCarTypeChangedCopyWith<$Res> {
  __$$_RentalCarTypeChangedCopyWithImpl(_$_RentalCarTypeChanged _value,
      $Res Function(_$_RentalCarTypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carAddressType = null,
  }) {
    return _then(_$_RentalCarTypeChanged(
      carAddressType: null == carAddressType
          ? _value.carAddressType
          : carAddressType // ignore: cast_nullable_to_non_nullable
              as CarAddressType,
    ));
  }
}

/// @nodoc

class _$_RentalCarTypeChanged implements _RentalCarTypeChanged {
  const _$_RentalCarTypeChanged({required this.carAddressType});

  @override
  final CarAddressType carAddressType;

  @override
  String toString() {
    return 'CarDetailEvent.addressTypeChanged(carAddressType: $carAddressType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RentalCarTypeChanged &&
            (identical(other.carAddressType, carAddressType) ||
                other.carAddressType == carAddressType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carAddressType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RentalCarTypeChangedCopyWith<_$_RentalCarTypeChanged> get copyWith =>
      __$$_RentalCarTypeChangedCopyWithImpl<_$_RentalCarTypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude)
        started,
    required TResult Function(CarAddressType carAddressType) addressTypeChanged,
    required TResult Function(Promotion? promotion) promotionChanged,
  }) {
    return addressTypeChanged(carAddressType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult? Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult? Function(Promotion? promotion)? promotionChanged,
  }) {
    return addressTypeChanged?.call(carAddressType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult Function(Promotion? promotion)? promotionChanged,
    required TResult orElse(),
  }) {
    if (addressTypeChanged != null) {
      return addressTypeChanged(carAddressType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RentalCarTypeChanged value) addressTypeChanged,
    required TResult Function(_PromotionChanged value) promotionChanged,
  }) {
    return addressTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult? Function(_PromotionChanged value)? promotionChanged,
  }) {
    return addressTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult Function(_PromotionChanged value)? promotionChanged,
    required TResult orElse(),
  }) {
    if (addressTypeChanged != null) {
      return addressTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _RentalCarTypeChanged implements CarDetailEvent {
  const factory _RentalCarTypeChanged(
      {required final CarAddressType carAddressType}) = _$_RentalCarTypeChanged;

  CarAddressType get carAddressType;
  @JsonKey(ignore: true)
  _$$_RentalCarTypeChangedCopyWith<_$_RentalCarTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PromotionChangedCopyWith<$Res> {
  factory _$$_PromotionChangedCopyWith(
          _$_PromotionChanged value, $Res Function(_$_PromotionChanged) then) =
      __$$_PromotionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Promotion? promotion});

  $PromotionCopyWith<$Res>? get promotion;
}

/// @nodoc
class __$$_PromotionChangedCopyWithImpl<$Res>
    extends _$CarDetailEventCopyWithImpl<$Res, _$_PromotionChanged>
    implements _$$_PromotionChangedCopyWith<$Res> {
  __$$_PromotionChangedCopyWithImpl(
      _$_PromotionChanged _value, $Res Function(_$_PromotionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotion = freezed,
  }) {
    return _then(_$_PromotionChanged(
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionCopyWith<$Res>? get promotion {
    if (_value.promotion == null) {
      return null;
    }

    return $PromotionCopyWith<$Res>(_value.promotion!, (value) {
      return _then(_value.copyWith(promotion: value));
    });
  }
}

/// @nodoc

class _$_PromotionChanged implements _PromotionChanged {
  const _$_PromotionChanged({this.promotion});

  @override
  final Promotion? promotion;

  @override
  String toString() {
    return 'CarDetailEvent.promotionChanged(promotion: $promotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionChanged &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionChangedCopyWith<_$_PromotionChanged> get copyWith =>
      __$$_PromotionChangedCopyWithImpl<_$_PromotionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude)
        started,
    required TResult Function(CarAddressType carAddressType) addressTypeChanged,
    required TResult Function(Promotion? promotion) promotionChanged,
  }) {
    return promotionChanged(promotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult? Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult? Function(Promotion? promotion)? promotionChanged,
  }) {
    return promotionChanged?.call(promotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String carId, String? address, DateTime? startDate,
            DateTime? endDate, double? latitude, double? longitude)?
        started,
    TResult Function(CarAddressType carAddressType)? addressTypeChanged,
    TResult Function(Promotion? promotion)? promotionChanged,
    required TResult orElse(),
  }) {
    if (promotionChanged != null) {
      return promotionChanged(promotion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RentalCarTypeChanged value) addressTypeChanged,
    required TResult Function(_PromotionChanged value) promotionChanged,
  }) {
    return promotionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult? Function(_PromotionChanged value)? promotionChanged,
  }) {
    return promotionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RentalCarTypeChanged value)? addressTypeChanged,
    TResult Function(_PromotionChanged value)? promotionChanged,
    required TResult orElse(),
  }) {
    if (promotionChanged != null) {
      return promotionChanged(this);
    }
    return orElse();
  }
}

abstract class _PromotionChanged implements CarDetailEvent {
  const factory _PromotionChanged({final Promotion? promotion}) =
      _$_PromotionChanged;

  Promotion? get promotion;
  @JsonKey(ignore: true)
  _$$_PromotionChangedCopyWith<_$_PromotionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)
        success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDetailStateCopyWith<$Res> {
  factory $CarDetailStateCopyWith(
          CarDetailState value, $Res Function(CarDetailState) then) =
      _$CarDetailStateCopyWithImpl<$Res, CarDetailState>;
}

/// @nodoc
class _$CarDetailStateCopyWithImpl<$Res, $Val extends CarDetailState>
    implements $CarDetailStateCopyWith<$Res> {
  _$CarDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CarDetailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CarDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)
        success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CarDetailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CarDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CarDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)
        success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CarDetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Car car,
      String address,
      DateTime startDate,
      DateTime endDate,
      double latitude,
      double longitude,
      CarAddressType carAddressType,
      String deliveryAddress,
      double deliveryDistance,
      Promotion? promotion,
      User? user});

  $CarCopyWith<$Res> get car;
  $PromotionCopyWith<$Res>? get promotion;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CarDetailStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? address = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? carAddressType = null,
    Object? deliveryAddress = null,
    Object? deliveryDistance = null,
    Object? promotion = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Success(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      carAddressType: null == carAddressType
          ? _value.carAddressType
          : carAddressType // ignore: cast_nullable_to_non_nullable
              as CarAddressType,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDistance: null == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionCopyWith<$Res>? get promotion {
    if (_value.promotion == null) {
      return null;
    }

    return $PromotionCopyWith<$Res>(_value.promotion!, (value) {
      return _then(_value.copyWith(promotion: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.car,
      required this.address,
      required this.startDate,
      required this.endDate,
      required this.latitude,
      required this.longitude,
      required this.carAddressType,
      required this.deliveryAddress,
      required this.deliveryDistance,
      this.promotion,
      this.user});

  @override
  final Car car;
  @override
  final String address;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final CarAddressType carAddressType;
  @override
  final String deliveryAddress;
  @override
  final double deliveryDistance;
  @override
  final Promotion? promotion;
  @override
  final User? user;

  @override
  String toString() {
    return 'CarDetailState.success(car: $car, address: $address, startDate: $startDate, endDate: $endDate, latitude: $latitude, longitude: $longitude, carAddressType: $carAddressType, deliveryAddress: $deliveryAddress, deliveryDistance: $deliveryDistance, promotion: $promotion, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.carAddressType, carAddressType) ||
                other.carAddressType == carAddressType) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.deliveryDistance, deliveryDistance) ||
                other.deliveryDistance == deliveryDistance) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      car,
      address,
      startDate,
      endDate,
      latitude,
      longitude,
      carAddressType,
      deliveryAddress,
      deliveryDistance,
      promotion,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)
        success,
    required TResult Function(String? message) failure,
  }) {
    return success(car, address, startDate, endDate, latitude, longitude,
        carAddressType, deliveryAddress, deliveryDistance, promotion, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(car, address, startDate, endDate, latitude, longitude,
        carAddressType, deliveryAddress, deliveryDistance, promotion, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(car, address, startDate, endDate, latitude, longitude,
          carAddressType, deliveryAddress, deliveryDistance, promotion, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CarDetailState {
  const factory _Success(
      {required final Car car,
      required final String address,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double latitude,
      required final double longitude,
      required final CarAddressType carAddressType,
      required final String deliveryAddress,
      required final double deliveryDistance,
      final Promotion? promotion,
      final User? user}) = _$_Success;

  Car get car;
  String get address;
  DateTime get startDate;
  DateTime get endDate;
  double get latitude;
  double get longitude;
  CarAddressType get carAddressType;
  String get deliveryAddress;
  double get deliveryDistance;
  Promotion? get promotion;
  User? get user;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$CarDetailStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CarDetailState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)
        success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Car car,
            String address,
            DateTime startDate,
            DateTime endDate,
            double latitude,
            double longitude,
            CarAddressType carAddressType,
            String deliveryAddress,
            double deliveryDistance,
            Promotion? promotion,
            User? user)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CarDetailState {
  const factory _Failure({final String? message}) = _$_Failure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
