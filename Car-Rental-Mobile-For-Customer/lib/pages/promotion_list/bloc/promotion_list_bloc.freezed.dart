// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromotionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionListEventCopyWith<$Res> {
  factory $PromotionListEventCopyWith(
          PromotionListEvent value, $Res Function(PromotionListEvent) then) =
      _$PromotionListEventCopyWithImpl<$Res, PromotionListEvent>;
}

/// @nodoc
class _$PromotionListEventCopyWithImpl<$Res, $Val extends PromotionListEvent>
    implements $PromotionListEventCopyWith<$Res> {
  _$PromotionListEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PromotionListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PromotionListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PromotionListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$PromotionListState {
  List<Promotion> get promotions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionListStateCopyWith<PromotionListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionListStateCopyWith<$Res> {
  factory $PromotionListStateCopyWith(
          PromotionListState value, $Res Function(PromotionListState) then) =
      _$PromotionListStateCopyWithImpl<$Res, PromotionListState>;
  @useResult
  $Res call({List<Promotion> promotions});
}

/// @nodoc
class _$PromotionListStateCopyWithImpl<$Res, $Val extends PromotionListState>
    implements $PromotionListStateCopyWith<$Res> {
  _$PromotionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_value.copyWith(
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionListStateCopyWith<$Res>
    implements $PromotionListStateCopyWith<$Res> {
  factory _$$_PromotionListStateCopyWith(_$_PromotionListState value,
          $Res Function(_$_PromotionListState) then) =
      __$$_PromotionListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Promotion> promotions});
}

/// @nodoc
class __$$_PromotionListStateCopyWithImpl<$Res>
    extends _$PromotionListStateCopyWithImpl<$Res, _$_PromotionListState>
    implements _$$_PromotionListStateCopyWith<$Res> {
  __$$_PromotionListStateCopyWithImpl(
      _$_PromotionListState _value, $Res Function(_$_PromotionListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_$_PromotionListState(
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
    ));
  }
}

/// @nodoc

class _$_PromotionListState implements _PromotionListState {
  const _$_PromotionListState({required final List<Promotion> promotions})
      : _promotions = promotions;

  final List<Promotion> _promotions;
  @override
  List<Promotion> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  String toString() {
    return 'PromotionListState(promotions: $promotions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionListState &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionListStateCopyWith<_$_PromotionListState> get copyWith =>
      __$$_PromotionListStateCopyWithImpl<_$_PromotionListState>(
          this, _$identity);
}

abstract class _PromotionListState implements PromotionListState {
  const factory _PromotionListState(
      {required final List<Promotion> promotions}) = _$_PromotionListState;

  @override
  List<Promotion> get promotions;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionListStateCopyWith<_$_PromotionListState> get copyWith =>
      throw _privateConstructorUsedError;
}
