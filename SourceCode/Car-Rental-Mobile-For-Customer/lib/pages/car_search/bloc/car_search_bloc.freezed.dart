// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? longitude, double? latitude,
            DateTime? startDate, DateTime? endDate, String? address)
        started,
    required TResult Function(String address, double longitude, double latitude)
        addressChanged,
    required TResult Function(DateTime startDate, DateTime endDate)
        dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult? Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult? Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchEventCopyWith<$Res> {
  factory $CarSearchEventCopyWith(
          CarSearchEvent value, $Res Function(CarSearchEvent) then) =
      _$CarSearchEventCopyWithImpl<$Res, CarSearchEvent>;
}

/// @nodoc
class _$CarSearchEventCopyWithImpl<$Res, $Val extends CarSearchEvent>
    implements $CarSearchEventCopyWith<$Res> {
  _$CarSearchEventCopyWithImpl(this._value, this._then);

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
      {double? longitude,
      double? latitude,
      DateTime? startDate,
      DateTime? endDate,
      String? address});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Started(
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {this.longitude,
      this.latitude,
      this.startDate,
      this.endDate,
      this.address});

  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? address;

  @override
  String toString() {
    return 'CarSearchEvent.started(longitude: $longitude, latitude: $latitude, startDate: $startDate, endDate: $endDate, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, longitude, latitude, startDate, endDate, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? longitude, double? latitude,
            DateTime? startDate, DateTime? endDate, String? address)
        started,
    required TResult Function(String address, double longitude, double latitude)
        addressChanged,
    required TResult Function(DateTime startDate, DateTime endDate)
        dateRangeChanged,
  }) {
    return started(longitude, latitude, startDate, endDate, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult? Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult? Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
  }) {
    return started?.call(longitude, latitude, startDate, endDate, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(longitude, latitude, startDate, endDate, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarSearchEvent {
  const factory _Started(
      {final double? longitude,
      final double? latitude,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? address}) = _$_Started;

  double? get longitude;
  double? get latitude;
  DateTime? get startDate;
  DateTime? get endDate;
  String? get address;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressChangedCopyWith<$Res> {
  factory _$$_AddressChangedCopyWith(
          _$_AddressChanged value, $Res Function(_$_AddressChanged) then) =
      __$$_AddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String address, double longitude, double latitude});
}

/// @nodoc
class __$$_AddressChangedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_AddressChanged>
    implements _$$_AddressChangedCopyWith<$Res> {
  __$$_AddressChangedCopyWithImpl(
      _$_AddressChanged _value, $Res Function(_$_AddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_AddressChanged(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged(
      {required this.address, required this.longitude, required this.latitude});

  @override
  final String address;
  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'CarSearchEvent.addressChanged(address: $address, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressChanged &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      __$$_AddressChangedCopyWithImpl<_$_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? longitude, double? latitude,
            DateTime? startDate, DateTime? endDate, String? address)
        started,
    required TResult Function(String address, double longitude, double latitude)
        addressChanged,
    required TResult Function(DateTime startDate, DateTime endDate)
        dateRangeChanged,
  }) {
    return addressChanged(address, longitude, latitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult? Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult? Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
  }) {
    return addressChanged?.call(address, longitude, latitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address, longitude, latitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements CarSearchEvent {
  const factory _AddressChanged(
      {required final String address,
      required final double longitude,
      required final double latitude}) = _$_AddressChanged;

  String get address;
  double get longitude;
  double get latitude;
  @JsonKey(ignore: true)
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateRangeChangedCopyWith<$Res> {
  factory _$$_DateRangeChangedCopyWith(
          _$_DateRangeChanged value, $Res Function(_$_DateRangeChanged) then) =
      __$$_DateRangeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_DateRangeChangedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_DateRangeChanged>
    implements _$$_DateRangeChangedCopyWith<$Res> {
  __$$_DateRangeChangedCopyWithImpl(
      _$_DateRangeChanged _value, $Res Function(_$_DateRangeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$_DateRangeChanged(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateRangeChanged implements _DateRangeChanged {
  const _$_DateRangeChanged({required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'CarSearchEvent.dateRangeChanged(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateRangeChanged &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateRangeChangedCopyWith<_$_DateRangeChanged> get copyWith =>
      __$$_DateRangeChangedCopyWithImpl<_$_DateRangeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? longitude, double? latitude,
            DateTime? startDate, DateTime? endDate, String? address)
        started,
    required TResult Function(String address, double longitude, double latitude)
        addressChanged,
    required TResult Function(DateTime startDate, DateTime endDate)
        dateRangeChanged,
  }) {
    return dateRangeChanged(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult? Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult? Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
  }) {
    return dateRangeChanged?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? longitude, double? latitude, DateTime? startDate,
            DateTime? endDate, String? address)?
        started,
    TResult Function(String address, double longitude, double latitude)?
        addressChanged,
    TResult Function(DateTime startDate, DateTime endDate)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_DateRangeChanged value) dateRangeChanged,
  }) {
    return dateRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_DateRangeChanged value)? dateRangeChanged,
  }) {
    return dateRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_DateRangeChanged value)? dateRangeChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateRangeChanged implements CarSearchEvent {
  const factory _DateRangeChanged(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$_DateRangeChanged;

  DateTime get startDate;
  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$_DateRangeChangedCopyWith<_$_DateRangeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarSearchState {
  String? get address => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  List<Car>? get cars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarSearchStateCopyWith<CarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchStateCopyWith<$Res> {
  factory $CarSearchStateCopyWith(
          CarSearchState value, $Res Function(CarSearchState) then) =
      _$CarSearchStateCopyWithImpl<$Res, CarSearchState>;
  @useResult
  $Res call(
      {String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? longitude,
      double? latitude,
      List<Car>? cars});
}

/// @nodoc
class _$CarSearchStateCopyWithImpl<$Res, $Val extends CarSearchState>
    implements $CarSearchStateCopyWith<$Res> {
  _$CarSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? cars = freezed,
  }) {
    return _then(_value.copyWith(
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      cars: freezed == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarSearchStateCopyWith<$Res>
    implements $CarSearchStateCopyWith<$Res> {
  factory _$$_CarSearchStateCopyWith(
          _$_CarSearchState value, $Res Function(_$_CarSearchState) then) =
      __$$_CarSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? longitude,
      double? latitude,
      List<Car>? cars});
}

/// @nodoc
class __$$_CarSearchStateCopyWithImpl<$Res>
    extends _$CarSearchStateCopyWithImpl<$Res, _$_CarSearchState>
    implements _$$_CarSearchStateCopyWith<$Res> {
  __$$_CarSearchStateCopyWithImpl(
      _$_CarSearchState _value, $Res Function(_$_CarSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? cars = freezed,
  }) {
    return _then(_$_CarSearchState(
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      cars: freezed == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>?,
    ));
  }
}

/// @nodoc

class _$_CarSearchState implements _CarSearchState {
  const _$_CarSearchState(
      {this.address,
      this.startDate,
      this.endDate,
      this.longitude,
      this.latitude,
      final List<Car>? cars})
      : _cars = cars;

  @override
  final String? address;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? longitude;
  @override
  final double? latitude;
  final List<Car>? _cars;
  @override
  List<Car>? get cars {
    final value = _cars;
    if (value == null) return null;
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarSearchState(address: $address, startDate: $startDate, endDate: $endDate, longitude: $longitude, latitude: $latitude, cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarSearchState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, startDate, endDate,
      longitude, latitude, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      __$$_CarSearchStateCopyWithImpl<_$_CarSearchState>(this, _$identity);
}

abstract class _CarSearchState implements CarSearchState {
  const factory _CarSearchState(
      {final String? address,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? longitude,
      final double? latitude,
      final List<Car>? cars}) = _$_CarSearchState;

  @override
  String? get address;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  List<Car>? get cars;
  @override
  @JsonKey(ignore: true)
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
