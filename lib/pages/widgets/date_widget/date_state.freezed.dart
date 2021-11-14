// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotifyDateStateTearOff {
  const _$NotifyDateStateTearOff();

  _NotifyDateState call({DateTime? notifyDate}) {
    return _NotifyDateState(
      notifyDate: notifyDate,
    );
  }
}

/// @nodoc
const $NotifyDateState = _$NotifyDateStateTearOff();

/// @nodoc
mixin _$NotifyDateState {
  DateTime? get notifyDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotifyDateStateCopyWith<NotifyDateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyDateStateCopyWith<$Res> {
  factory $NotifyDateStateCopyWith(
          NotifyDateState value, $Res Function(NotifyDateState) then) =
      _$NotifyDateStateCopyWithImpl<$Res>;
  $Res call({DateTime? notifyDate});
}

/// @nodoc
class _$NotifyDateStateCopyWithImpl<$Res>
    implements $NotifyDateStateCopyWith<$Res> {
  _$NotifyDateStateCopyWithImpl(this._value, this._then);

  final NotifyDateState _value;
  // ignore: unused_field
  final $Res Function(NotifyDateState) _then;

  @override
  $Res call({
    Object? notifyDate = freezed,
  }) {
    return _then(_value.copyWith(
      notifyDate: notifyDate == freezed
          ? _value.notifyDate
          : notifyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$NotifyDateStateCopyWith<$Res>
    implements $NotifyDateStateCopyWith<$Res> {
  factory _$NotifyDateStateCopyWith(
          _NotifyDateState value, $Res Function(_NotifyDateState) then) =
      __$NotifyDateStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? notifyDate});
}

/// @nodoc
class __$NotifyDateStateCopyWithImpl<$Res>
    extends _$NotifyDateStateCopyWithImpl<$Res>
    implements _$NotifyDateStateCopyWith<$Res> {
  __$NotifyDateStateCopyWithImpl(
      _NotifyDateState _value, $Res Function(_NotifyDateState) _then)
      : super(_value, (v) => _then(v as _NotifyDateState));

  @override
  _NotifyDateState get _value => super._value as _NotifyDateState;

  @override
  $Res call({
    Object? notifyDate = freezed,
  }) {
    return _then(_NotifyDateState(
      notifyDate: notifyDate == freezed
          ? _value.notifyDate
          : notifyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_NotifyDateState implements _NotifyDateState {
  const _$_NotifyDateState({this.notifyDate});

  @override
  final DateTime? notifyDate;

  @override
  String toString() {
    return 'NotifyDateState(notifyDate: $notifyDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotifyDateState &&
            (identical(other.notifyDate, notifyDate) ||
                other.notifyDate == notifyDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifyDate);

  @JsonKey(ignore: true)
  @override
  _$NotifyDateStateCopyWith<_NotifyDateState> get copyWith =>
      __$NotifyDateStateCopyWithImpl<_NotifyDateState>(this, _$identity);
}

abstract class _NotifyDateState implements NotifyDateState {
  const factory _NotifyDateState({DateTime? notifyDate}) = _$_NotifyDateState;

  @override
  DateTime? get notifyDate;
  @override
  @JsonKey(ignore: true)
  _$NotifyDateStateCopyWith<_NotifyDateState> get copyWith =>
      throw _privateConstructorUsedError;
}
