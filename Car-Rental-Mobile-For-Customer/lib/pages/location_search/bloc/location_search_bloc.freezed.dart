// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchEventCopyWith<$Res> {
  factory $LocationSearchEventCopyWith(
          LocationSearchEvent value, $Res Function(LocationSearchEvent) then) =
      _$LocationSearchEventCopyWithImpl<$Res, LocationSearchEvent>;
}

/// @nodoc
class _$LocationSearchEventCopyWithImpl<$Res, $Val extends LocationSearchEvent>
    implements $LocationSearchEventCopyWith<$Res> {
  _$LocationSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String location, BuildContext context});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_LocationChanged>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? context = null,
  }) {
    return _then(_$_LocationChanged(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location, this.context);

  @override
  final String location;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LocationSearchEvent.locationChanged(location: $location, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChanged &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) {
    return locationChanged(location, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) {
    return locationChanged?.call(location, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements LocationSearchEvent {
  const factory _LocationChanged(
      final String location, final BuildContext context) = _$_LocationChanged;

  String get location;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentLocationSelectedCopyWith<$Res> {
  factory _$$_CurrentLocationSelectedCopyWith(_$_CurrentLocationSelected value,
          $Res Function(_$_CurrentLocationSelected) then) =
      __$$_CurrentLocationSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_CurrentLocationSelectedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_CurrentLocationSelected>
    implements _$$_CurrentLocationSelectedCopyWith<$Res> {
  __$$_CurrentLocationSelectedCopyWithImpl(_$_CurrentLocationSelected _value,
      $Res Function(_$_CurrentLocationSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_CurrentLocationSelected(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_CurrentLocationSelected implements _CurrentLocationSelected {
  const _$_CurrentLocationSelected(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LocationSearchEvent.currentLocationSelected(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentLocationSelected &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentLocationSelectedCopyWith<_$_CurrentLocationSelected>
      get copyWith =>
          __$$_CurrentLocationSelectedCopyWithImpl<_$_CurrentLocationSelected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) {
    return currentLocationSelected(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) {
    return currentLocationSelected?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) {
    if (currentLocationSelected != null) {
      return currentLocationSelected(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return currentLocationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return currentLocationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (currentLocationSelected != null) {
      return currentLocationSelected(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocationSelected implements LocationSearchEvent {
  const factory _CurrentLocationSelected(final BuildContext context) =
      _$_CurrentLocationSelected;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_CurrentLocationSelectedCopyWith<_$_CurrentLocationSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MyAddressSelectedCopyWith<$Res> {
  factory _$$_MyAddressSelectedCopyWith(_$_MyAddressSelected value,
          $Res Function(_$_MyAddressSelected) then) =
      __$$_MyAddressSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_MyAddressSelectedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_MyAddressSelected>
    implements _$$_MyAddressSelectedCopyWith<$Res> {
  __$$_MyAddressSelectedCopyWithImpl(
      _$_MyAddressSelected _value, $Res Function(_$_MyAddressSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_MyAddressSelected(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_MyAddressSelected implements _MyAddressSelected {
  const _$_MyAddressSelected(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LocationSearchEvent.myAddressSelected(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAddressSelected &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyAddressSelectedCopyWith<_$_MyAddressSelected> get copyWith =>
      __$$_MyAddressSelectedCopyWithImpl<_$_MyAddressSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) {
    return myAddressSelected(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) {
    return myAddressSelected?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) {
    if (myAddressSelected != null) {
      return myAddressSelected(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return myAddressSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return myAddressSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (myAddressSelected != null) {
      return myAddressSelected(this);
    }
    return orElse();
  }
}

abstract class _MyAddressSelected implements LocationSearchEvent {
  const factory _MyAddressSelected(final BuildContext context) =
      _$_MyAddressSelected;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_MyAddressSelectedCopyWith<_$_MyAddressSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressSearchedCopyWith<$Res> {
  factory _$$_AddressSearchedCopyWith(
          _$_AddressSearched value, $Res Function(_$_AddressSearched) then) =
      __$$_AddressSearchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_AddressSearchedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_AddressSearched>
    implements _$$_AddressSearchedCopyWith<$Res> {
  __$$_AddressSearchedCopyWithImpl(
      _$_AddressSearched _value, $Res Function(_$_AddressSearched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_AddressSearched(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressSearched implements _AddressSearched {
  const _$_AddressSearched(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LocationSearchEvent.addressSearched(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressSearched &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressSearchedCopyWith<_$_AddressSearched> get copyWith =>
      __$$_AddressSearchedCopyWithImpl<_$_AddressSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) {
    return addressSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) {
    return addressSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSearched != null) {
      return addressSearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return addressSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return addressSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSearched != null) {
      return addressSearched(this);
    }
    return orElse();
  }
}

abstract class _AddressSearched implements LocationSearchEvent {
  const factory _AddressSearched(final String query) = _$_AddressSearched;

  String get query;
  @JsonKey(ignore: true)
  _$$_AddressSearchedCopyWith<_$_AddressSearched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressSelectedCopyWith<$Res> {
  factory _$$_AddressSelectedCopyWith(
          _$_AddressSelected value, $Res Function(_$_AddressSelected) then) =
      __$$_AddressSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place, BuildContext context});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$_AddressSelectedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_AddressSelected>
    implements _$$_AddressSelectedCopyWith<$Res> {
  __$$_AddressSelectedCopyWithImpl(
      _$_AddressSelected _value, $Res Function(_$_AddressSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? context = null,
  }) {
    return _then(_$_AddressSelected(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc

class _$_AddressSelected implements _AddressSelected {
  const _$_AddressSelected(this.place, this.context);

  @override
  final Place place;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LocationSearchEvent.addressSelected(place: $place, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressSelected &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressSelectedCopyWith<_$_AddressSelected> get copyWith =>
      __$$_AddressSelectedCopyWithImpl<_$_AddressSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, BuildContext context)
        locationChanged,
    required TResult Function(BuildContext context) currentLocationSelected,
    required TResult Function(BuildContext context) myAddressSelected,
    required TResult Function(String query) addressSearched,
    required TResult Function(Place place, BuildContext context)
        addressSelected,
  }) {
    return addressSelected(place, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, BuildContext context)? locationChanged,
    TResult? Function(BuildContext context)? currentLocationSelected,
    TResult? Function(BuildContext context)? myAddressSelected,
    TResult? Function(String query)? addressSearched,
    TResult? Function(Place place, BuildContext context)? addressSelected,
  }) {
    return addressSelected?.call(place, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, BuildContext context)? locationChanged,
    TResult Function(BuildContext context)? currentLocationSelected,
    TResult Function(BuildContext context)? myAddressSelected,
    TResult Function(String query)? addressSearched,
    TResult Function(Place place, BuildContext context)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSelected != null) {
      return addressSelected(place, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
    required TResult Function(_AddressSearched value) addressSearched,
    required TResult Function(_AddressSelected value) addressSelected,
  }) {
    return addressSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
    TResult? Function(_AddressSearched value)? addressSearched,
    TResult? Function(_AddressSelected value)? addressSelected,
  }) {
    return addressSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    TResult Function(_AddressSearched value)? addressSearched,
    TResult Function(_AddressSelected value)? addressSelected,
    required TResult orElse(),
  }) {
    if (addressSelected != null) {
      return addressSelected(this);
    }
    return orElse();
  }
}

abstract class _AddressSelected implements LocationSearchEvent {
  const factory _AddressSelected(
      final Place place, final BuildContext context) = _$_AddressSelected;

  Place get place;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddressSelectedCopyWith<_$_AddressSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationSearchState {
  String? get query => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationSearchStateCopyWith<LocationSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchStateCopyWith(
          LocationSearchState value, $Res Function(LocationSearchState) then) =
      _$LocationSearchStateCopyWithImpl<$Res, LocationSearchState>;
  @useResult
  $Res call({String? query, List<Place> places});
}

/// @nodoc
class _$LocationSearchStateCopyWithImpl<$Res, $Val extends LocationSearchState>
    implements $LocationSearchStateCopyWith<$Res> {
  _$LocationSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationSearchStateCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory _$$_LocationSearchStateCopyWith(_$_LocationSearchState value,
          $Res Function(_$_LocationSearchState) then) =
      __$$_LocationSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<Place> places});
}

/// @nodoc
class __$$_LocationSearchStateCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res, _$_LocationSearchState>
    implements _$$_LocationSearchStateCopyWith<$Res> {
  __$$_LocationSearchStateCopyWithImpl(_$_LocationSearchState _value,
      $Res Function(_$_LocationSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? places = null,
  }) {
    return _then(_$_LocationSearchState(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$_LocationSearchState implements _LocationSearchState {
  const _$_LocationSearchState({this.query, required final List<Place> places})
      : _places = places;

  @override
  final String? query;
  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'LocationSearchState(query: $query, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationSearchState &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationSearchStateCopyWith<_$_LocationSearchState> get copyWith =>
      __$$_LocationSearchStateCopyWithImpl<_$_LocationSearchState>(
          this, _$identity);
}

abstract class _LocationSearchState implements LocationSearchState {
  const factory _LocationSearchState(
      {final String? query,
      required final List<Place> places}) = _$_LocationSearchState;

  @override
  String? get query;
  @override
  List<Place> get places;
  @override
  @JsonKey(ignore: true)
  _$$_LocationSearchStateCopyWith<_$_LocationSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
