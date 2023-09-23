// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)
        started,
    required TResult Function(FeedbackModel carFeedback) carFeedbackChanged,
    required TResult Function(FeedbackModel driverFeedback)
        driverFeedbackChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult? Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult? Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarFeedbackChanged value) carFeedbackChanged,
    required TResult Function(_DriverFeedbackChanged value)
        driverFeedbackChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult? Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackEventCopyWith<$Res> {
  factory $FeedbackEventCopyWith(
          FeedbackEvent value, $Res Function(FeedbackEvent) then) =
      _$FeedbackEventCopyWithImpl<$Res, FeedbackEvent>;
}

/// @nodoc
class _$FeedbackEventCopyWithImpl<$Res, $Val extends FeedbackEvent>
    implements $FeedbackEventCopyWith<$Res> {
  _$FeedbackEventCopyWithImpl(this._value, this._then);

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
      {String? orderId,
      String? carId,
      String? driverId,
      String? customerId,
      FeedbackType feedbackType});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? carId = freezed,
    Object? driverId = freezed,
    Object? customerId = freezed,
    Object? feedbackType = null,
  }) {
    return _then(_$_Started(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      carId: freezed == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackType: null == feedbackType
          ? _value.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {this.orderId,
      this.carId,
      this.driverId,
      this.customerId,
      required this.feedbackType});

  @override
  final String? orderId;
  @override
  final String? carId;
  @override
  final String? driverId;
  @override
  final String? customerId;
  @override
  final FeedbackType feedbackType;

  @override
  String toString() {
    return 'FeedbackEvent.started(orderId: $orderId, carId: $carId, driverId: $driverId, customerId: $customerId, feedbackType: $feedbackType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, carId, driverId, customerId, feedbackType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)
        started,
    required TResult Function(FeedbackModel carFeedback) carFeedbackChanged,
    required TResult Function(FeedbackModel driverFeedback)
        driverFeedbackChanged,
  }) {
    return started(orderId, carId, driverId, customerId, feedbackType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult? Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult? Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
  }) {
    return started?.call(orderId, carId, driverId, customerId, feedbackType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(orderId, carId, driverId, customerId, feedbackType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarFeedbackChanged value) carFeedbackChanged,
    required TResult Function(_DriverFeedbackChanged value)
        driverFeedbackChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult? Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FeedbackEvent {
  const factory _Started(
      {final String? orderId,
      final String? carId,
      final String? driverId,
      final String? customerId,
      required final FeedbackType feedbackType}) = _$_Started;

  String? get orderId;
  String? get carId;
  String? get driverId;
  String? get customerId;
  FeedbackType get feedbackType;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CarFeedbackChangedCopyWith<$Res> {
  factory _$$_CarFeedbackChangedCopyWith(_$_CarFeedbackChanged value,
          $Res Function(_$_CarFeedbackChanged) then) =
      __$$_CarFeedbackChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedbackModel carFeedback});

  $FeedbackModelCopyWith<$Res> get carFeedback;
}

/// @nodoc
class __$$_CarFeedbackChangedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$_CarFeedbackChanged>
    implements _$$_CarFeedbackChangedCopyWith<$Res> {
  __$$_CarFeedbackChangedCopyWithImpl(
      _$_CarFeedbackChanged _value, $Res Function(_$_CarFeedbackChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carFeedback = null,
  }) {
    return _then(_$_CarFeedbackChanged(
      carFeedback: null == carFeedback
          ? _value.carFeedback
          : carFeedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res> get carFeedback {
    return $FeedbackModelCopyWith<$Res>(_value.carFeedback, (value) {
      return _then(_value.copyWith(carFeedback: value));
    });
  }
}

/// @nodoc

class _$_CarFeedbackChanged implements _CarFeedbackChanged {
  const _$_CarFeedbackChanged({required this.carFeedback});

  @override
  final FeedbackModel carFeedback;

  @override
  String toString() {
    return 'FeedbackEvent.carFeedbackChanged(carFeedback: $carFeedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarFeedbackChanged &&
            (identical(other.carFeedback, carFeedback) ||
                other.carFeedback == carFeedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carFeedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarFeedbackChangedCopyWith<_$_CarFeedbackChanged> get copyWith =>
      __$$_CarFeedbackChangedCopyWithImpl<_$_CarFeedbackChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)
        started,
    required TResult Function(FeedbackModel carFeedback) carFeedbackChanged,
    required TResult Function(FeedbackModel driverFeedback)
        driverFeedbackChanged,
  }) {
    return carFeedbackChanged(carFeedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult? Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult? Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
  }) {
    return carFeedbackChanged?.call(carFeedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (carFeedbackChanged != null) {
      return carFeedbackChanged(carFeedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarFeedbackChanged value) carFeedbackChanged,
    required TResult Function(_DriverFeedbackChanged value)
        driverFeedbackChanged,
  }) {
    return carFeedbackChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult? Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
  }) {
    return carFeedbackChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (carFeedbackChanged != null) {
      return carFeedbackChanged(this);
    }
    return orElse();
  }
}

abstract class _CarFeedbackChanged implements FeedbackEvent {
  const factory _CarFeedbackChanged(
      {required final FeedbackModel carFeedback}) = _$_CarFeedbackChanged;

  FeedbackModel get carFeedback;
  @JsonKey(ignore: true)
  _$$_CarFeedbackChangedCopyWith<_$_CarFeedbackChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DriverFeedbackChangedCopyWith<$Res> {
  factory _$$_DriverFeedbackChangedCopyWith(_$_DriverFeedbackChanged value,
          $Res Function(_$_DriverFeedbackChanged) then) =
      __$$_DriverFeedbackChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedbackModel driverFeedback});

  $FeedbackModelCopyWith<$Res> get driverFeedback;
}

/// @nodoc
class __$$_DriverFeedbackChangedCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$_DriverFeedbackChanged>
    implements _$$_DriverFeedbackChangedCopyWith<$Res> {
  __$$_DriverFeedbackChangedCopyWithImpl(_$_DriverFeedbackChanged _value,
      $Res Function(_$_DriverFeedbackChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverFeedback = null,
  }) {
    return _then(_$_DriverFeedbackChanged(
      driverFeedback: null == driverFeedback
          ? _value.driverFeedback
          : driverFeedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res> get driverFeedback {
    return $FeedbackModelCopyWith<$Res>(_value.driverFeedback, (value) {
      return _then(_value.copyWith(driverFeedback: value));
    });
  }
}

/// @nodoc

class _$_DriverFeedbackChanged implements _DriverFeedbackChanged {
  const _$_DriverFeedbackChanged({required this.driverFeedback});

  @override
  final FeedbackModel driverFeedback;

  @override
  String toString() {
    return 'FeedbackEvent.driverFeedbackChanged(driverFeedback: $driverFeedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverFeedbackChanged &&
            (identical(other.driverFeedback, driverFeedback) ||
                other.driverFeedback == driverFeedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverFeedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverFeedbackChangedCopyWith<_$_DriverFeedbackChanged> get copyWith =>
      __$$_DriverFeedbackChangedCopyWithImpl<_$_DriverFeedbackChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)
        started,
    required TResult Function(FeedbackModel carFeedback) carFeedbackChanged,
    required TResult Function(FeedbackModel driverFeedback)
        driverFeedbackChanged,
  }) {
    return driverFeedbackChanged(driverFeedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult? Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult? Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
  }) {
    return driverFeedbackChanged?.call(driverFeedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? orderId, String? carId, String? driverId,
            String? customerId, FeedbackType feedbackType)?
        started,
    TResult Function(FeedbackModel carFeedback)? carFeedbackChanged,
    TResult Function(FeedbackModel driverFeedback)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (driverFeedbackChanged != null) {
      return driverFeedbackChanged(driverFeedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CarFeedbackChanged value) carFeedbackChanged,
    required TResult Function(_DriverFeedbackChanged value)
        driverFeedbackChanged,
  }) {
    return driverFeedbackChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult? Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
  }) {
    return driverFeedbackChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CarFeedbackChanged value)? carFeedbackChanged,
    TResult Function(_DriverFeedbackChanged value)? driverFeedbackChanged,
    required TResult orElse(),
  }) {
    if (driverFeedbackChanged != null) {
      return driverFeedbackChanged(this);
    }
    return orElse();
  }
}

abstract class _DriverFeedbackChanged implements FeedbackEvent {
  const factory _DriverFeedbackChanged(
      {required final FeedbackModel driverFeedback}) = _$_DriverFeedbackChanged;

  FeedbackModel get driverFeedback;
  @JsonKey(ignore: true)
  _$$_DriverFeedbackChangedCopyWith<_$_DriverFeedbackChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            FeedbackModel carFeedback,
            FeedbackModel? driverFeedback,
            FeedbackType feedbackType,
            Order order)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult Function(String message)? failure,
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
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

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
    extends _$FeedbackStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FeedbackState.initial()';
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
            FeedbackModel carFeedback,
            FeedbackModel? driverFeedback,
            FeedbackType feedbackType,
            Order order)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult Function(String message)? failure,
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

abstract class _Initial implements FeedbackState {
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
    extends _$FeedbackStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FeedbackState.loading()';
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
            FeedbackModel carFeedback,
            FeedbackModel? driverFeedback,
            FeedbackType feedbackType,
            Order order)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult Function(String message)? failure,
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

abstract class _Loading implements FeedbackState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FeedbackModel carFeedback,
      FeedbackModel? driverFeedback,
      FeedbackType feedbackType,
      Order order});

  $FeedbackModelCopyWith<$Res> get carFeedback;
  $FeedbackModelCopyWith<$Res>? get driverFeedback;
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carFeedback = null,
    Object? driverFeedback = freezed,
    Object? feedbackType = null,
    Object? order = null,
  }) {
    return _then(_$_Success(
      carFeedback: null == carFeedback
          ? _value.carFeedback
          : carFeedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
      driverFeedback: freezed == driverFeedback
          ? _value.driverFeedback
          : driverFeedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel?,
      feedbackType: null == feedbackType
          ? _value.feedbackType
          : feedbackType // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res> get carFeedback {
    return $FeedbackModelCopyWith<$Res>(_value.carFeedback, (value) {
      return _then(_value.copyWith(carFeedback: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res>? get driverFeedback {
    if (_value.driverFeedback == null) {
      return null;
    }

    return $FeedbackModelCopyWith<$Res>(_value.driverFeedback!, (value) {
      return _then(_value.copyWith(driverFeedback: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.carFeedback,
      this.driverFeedback,
      required this.feedbackType,
      required this.order});

  @override
  final FeedbackModel carFeedback;
  @override
  final FeedbackModel? driverFeedback;
  @override
  final FeedbackType feedbackType;
  @override
  final Order order;

  @override
  String toString() {
    return 'FeedbackState.success(carFeedback: $carFeedback, driverFeedback: $driverFeedback, feedbackType: $feedbackType, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.carFeedback, carFeedback) ||
                other.carFeedback == carFeedback) &&
            (identical(other.driverFeedback, driverFeedback) ||
                other.driverFeedback == driverFeedback) &&
            (identical(other.feedbackType, feedbackType) ||
                other.feedbackType == feedbackType) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, carFeedback, driverFeedback, feedbackType, order);

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
            FeedbackModel carFeedback,
            FeedbackModel? driverFeedback,
            FeedbackType feedbackType,
            Order order)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(carFeedback, driverFeedback, feedbackType, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(carFeedback, driverFeedback, feedbackType, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(carFeedback, driverFeedback, feedbackType, order);
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

abstract class _Success implements FeedbackState {
  const factory _Success(
      {required final FeedbackModel carFeedback,
      final FeedbackModel? driverFeedback,
      required final FeedbackType feedbackType,
      required final Order order}) = _$_Success;

  FeedbackModel get carFeedback;
  FeedbackModel? get driverFeedback;
  FeedbackType get feedbackType;
  Order get order;
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
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FeedbackState.failure(message: $message)';
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
            FeedbackModel carFeedback,
            FeedbackModel? driverFeedback,
            FeedbackType feedbackType,
            Order order)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel carFeedback, FeedbackModel? driverFeedback,
            FeedbackType feedbackType, Order order)?
        success,
    TResult Function(String message)? failure,
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

abstract class _Failure implements FeedbackState {
  const factory _Failure({required final String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
