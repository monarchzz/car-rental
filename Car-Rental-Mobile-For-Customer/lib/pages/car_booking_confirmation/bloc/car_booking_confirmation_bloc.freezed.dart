// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_booking_confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarBookingConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)
        started,
    required TResult Function(OrderCreateModel orderCreateModel) orderCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult? Function(OrderCreateModel orderCreateModel)? orderCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult Function(OrderCreateModel orderCreateModel)? orderCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCreated value) orderCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCreated value)? orderCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCreated value)? orderCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBookingConfirmationEventCopyWith<$Res> {
  factory $CarBookingConfirmationEventCopyWith(
          CarBookingConfirmationEvent value,
          $Res Function(CarBookingConfirmationEvent) then) =
      _$CarBookingConfirmationEventCopyWithImpl<$Res,
          CarBookingConfirmationEvent>;
}

/// @nodoc
class _$CarBookingConfirmationEventCopyWithImpl<$Res,
        $Val extends CarBookingConfirmationEvent>
    implements $CarBookingConfirmationEventCopyWith<$Res> {
  _$CarBookingConfirmationEventCopyWithImpl(this._value, this._then);

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
      {String? carId,
      String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? latitude,
      double? longitude,
      String? promotionId,
      double? carDeliveryCost,
      bool hasDriver});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarBookingConfirmationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = freezed,
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? promotionId = freezed,
    Object? carDeliveryCost = freezed,
    Object? hasDriver = null,
  }) {
    return _then(_$_Started(
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String?,
      carDeliveryCost: freezed == carDeliveryCost
          ? _value.carDeliveryCost
          : carDeliveryCost // ignore: cast_nullable_to_non_nullable
              as double?,
      hasDriver: null == hasDriver
          ? _value.hasDriver
          : hasDriver // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {this.carId,
      this.address,
      this.startDate,
      this.endDate,
      this.latitude,
      this.longitude,
      this.promotionId,
      this.carDeliveryCost,
      required this.hasDriver});

  @override
  final String? carId;
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
  final String? promotionId;
  @override
  final double? carDeliveryCost;
  @override
  final bool hasDriver;

  @override
  String toString() {
    return 'CarBookingConfirmationEvent.started(carId: $carId, address: $address, startDate: $startDate, endDate: $endDate, latitude: $latitude, longitude: $longitude, promotionId: $promotionId, carDeliveryCost: $carDeliveryCost, hasDriver: $hasDriver)';
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
                other.longitude == longitude) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.carDeliveryCost, carDeliveryCost) ||
                other.carDeliveryCost == carDeliveryCost) &&
            (identical(other.hasDriver, hasDriver) ||
                other.hasDriver == hasDriver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId, address, startDate,
      endDate, latitude, longitude, promotionId, carDeliveryCost, hasDriver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)
        started,
    required TResult Function(OrderCreateModel orderCreateModel) orderCreated,
  }) {
    return started(carId, address, startDate, endDate, latitude, longitude,
        promotionId, carDeliveryCost, hasDriver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult? Function(OrderCreateModel orderCreateModel)? orderCreated,
  }) {
    return started?.call(carId, address, startDate, endDate, latitude,
        longitude, promotionId, carDeliveryCost, hasDriver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult Function(OrderCreateModel orderCreateModel)? orderCreated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(carId, address, startDate, endDate, latitude, longitude,
          promotionId, carDeliveryCost, hasDriver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCreated value) orderCreated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCreated value)? orderCreated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCreated value)? orderCreated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarBookingConfirmationEvent {
  const factory _Started(
      {final String? carId,
      final String? address,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? latitude,
      final double? longitude,
      final String? promotionId,
      final double? carDeliveryCost,
      required final bool hasDriver}) = _$_Started;

  String? get carId;
  String? get address;
  DateTime? get startDate;
  DateTime? get endDate;
  double? get latitude;
  double? get longitude;
  String? get promotionId;
  double? get carDeliveryCost;
  bool get hasDriver;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OrderCreatedCopyWith<$Res> {
  factory _$$_OrderCreatedCopyWith(
          _$_OrderCreated value, $Res Function(_$_OrderCreated) then) =
      __$$_OrderCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderCreateModel orderCreateModel});
}

/// @nodoc
class __$$_OrderCreatedCopyWithImpl<$Res>
    extends _$CarBookingConfirmationEventCopyWithImpl<$Res, _$_OrderCreated>
    implements _$$_OrderCreatedCopyWith<$Res> {
  __$$_OrderCreatedCopyWithImpl(
      _$_OrderCreated _value, $Res Function(_$_OrderCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCreateModel = null,
  }) {
    return _then(_$_OrderCreated(
      orderCreateModel: null == orderCreateModel
          ? _value.orderCreateModel
          : orderCreateModel // ignore: cast_nullable_to_non_nullable
              as OrderCreateModel,
    ));
  }
}

/// @nodoc

class _$_OrderCreated implements _OrderCreated {
  const _$_OrderCreated({required this.orderCreateModel});

  @override
  final OrderCreateModel orderCreateModel;

  @override
  String toString() {
    return 'CarBookingConfirmationEvent.orderCreated(orderCreateModel: $orderCreateModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderCreated &&
            (identical(other.orderCreateModel, orderCreateModel) ||
                other.orderCreateModel == orderCreateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderCreateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCreatedCopyWith<_$_OrderCreated> get copyWith =>
      __$$_OrderCreatedCopyWithImpl<_$_OrderCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)
        started,
    required TResult Function(OrderCreateModel orderCreateModel) orderCreated,
  }) {
    return orderCreated(orderCreateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult? Function(OrderCreateModel orderCreateModel)? orderCreated,
  }) {
    return orderCreated?.call(orderCreateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? carId,
            String? address,
            DateTime? startDate,
            DateTime? endDate,
            double? latitude,
            double? longitude,
            String? promotionId,
            double? carDeliveryCost,
            bool hasDriver)?
        started,
    TResult Function(OrderCreateModel orderCreateModel)? orderCreated,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(orderCreateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OrderCreated value) orderCreated,
  }) {
    return orderCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OrderCreated value)? orderCreated,
  }) {
    return orderCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OrderCreated value)? orderCreated,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(this);
    }
    return orElse();
  }
}

abstract class _OrderCreated implements CarBookingConfirmationEvent {
  const factory _OrderCreated(
      {required final OrderCreateModel orderCreateModel}) = _$_OrderCreated;

  OrderCreateModel get orderCreateModel;
  @JsonKey(ignore: true)
  _$$_OrderCreatedCopyWith<_$_OrderCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarBookingConfirmationState {
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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
abstract class $CarBookingConfirmationStateCopyWith<$Res> {
  factory $CarBookingConfirmationStateCopyWith(
          CarBookingConfirmationState value,
          $Res Function(CarBookingConfirmationState) then) =
      _$CarBookingConfirmationStateCopyWithImpl<$Res,
          CarBookingConfirmationState>;
}

/// @nodoc
class _$CarBookingConfirmationStateCopyWithImpl<$Res,
        $Val extends CarBookingConfirmationState>
    implements $CarBookingConfirmationStateCopyWith<$Res> {
  _$CarBookingConfirmationStateCopyWithImpl(this._value, this._then);

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
    extends _$CarBookingConfirmationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CarBookingConfirmationState.initial()';
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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

abstract class _Initial implements CarBookingConfirmationState {
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
    extends _$CarBookingConfirmationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CarBookingConfirmationState.loading()';
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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

abstract class _Loading implements CarBookingConfirmationState {
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
      Promotion? promotion,
      double deliveryDistance,
      bool hasDriver});

  $CarCopyWith<$Res> get car;
  $PromotionCopyWith<$Res>? get promotion;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CarBookingConfirmationStateCopyWithImpl<$Res, _$_Success>
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
    Object? promotion = freezed,
    Object? deliveryDistance = null,
    Object? hasDriver = null,
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
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promotion?,
      deliveryDistance: null == deliveryDistance
          ? _value.deliveryDistance
          : deliveryDistance // ignore: cast_nullable_to_non_nullable
              as double,
      hasDriver: null == hasDriver
          ? _value.hasDriver
          : hasDriver // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.promotion,
      required this.deliveryDistance,
      required this.hasDriver});

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
  final Promotion? promotion;
  @override
  final double deliveryDistance;
  @override
  final bool hasDriver;

  @override
  String toString() {
    return 'CarBookingConfirmationState.success(car: $car, address: $address, startDate: $startDate, endDate: $endDate, latitude: $latitude, longitude: $longitude, promotion: $promotion, deliveryDistance: $deliveryDistance, hasDriver: $hasDriver)';
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
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            (identical(other.deliveryDistance, deliveryDistance) ||
                other.deliveryDistance == deliveryDistance) &&
            (identical(other.hasDriver, hasDriver) ||
                other.hasDriver == hasDriver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, car, address, startDate, endDate,
      latitude, longitude, promotion, deliveryDistance, hasDriver);

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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)
        success,
    required TResult Function(String? message) failure,
  }) {
    return success(car, address, startDate, endDate, latitude, longitude,
        promotion, deliveryDistance, hasDriver);
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(car, address, startDate, endDate, latitude, longitude,
        promotion, deliveryDistance, hasDriver);
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(car, address, startDate, endDate, latitude, longitude,
          promotion, deliveryDistance, hasDriver);
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

abstract class _Success implements CarBookingConfirmationState {
  const factory _Success(
      {required final Car car,
      required final String address,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double latitude,
      required final double longitude,
      final Promotion? promotion,
      required final double deliveryDistance,
      required final bool hasDriver}) = _$_Success;

  Car get car;
  String get address;
  DateTime get startDate;
  DateTime get endDate;
  double get latitude;
  double get longitude;
  Promotion? get promotion;
  double get deliveryDistance;
  bool get hasDriver;
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
    extends _$CarBookingConfirmationStateCopyWithImpl<$Res, _$_Failure>
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
    return 'CarBookingConfirmationState.failure(message: $message)';
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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
            Promotion? promotion,
            double deliveryDistance,
            bool hasDriver)?
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

abstract class _Failure implements CarBookingConfirmationState {
  const factory _Failure({final String? message}) = _$_Failure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
