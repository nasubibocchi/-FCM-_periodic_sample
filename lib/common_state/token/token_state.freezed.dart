// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TokenStateTearOff {
  const _$TokenStateTearOff();

  _TokenState call({String? token = ''}) {
    return _TokenState(
      token: token,
    );
  }
}

/// @nodoc
const $TokenState = _$TokenStateTearOff();

/// @nodoc
mixin _$TokenState {
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenStateCopyWith<TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res> implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  final TokenState _value;
  // ignore: unused_field
  final $Res Function(TokenState) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TokenStateCopyWith<$Res> implements $TokenStateCopyWith<$Res> {
  factory _$TokenStateCopyWith(
          _TokenState value, $Res Function(_TokenState) then) =
      __$TokenStateCopyWithImpl<$Res>;
  @override
  $Res call({String? token});
}

/// @nodoc
class __$TokenStateCopyWithImpl<$Res> extends _$TokenStateCopyWithImpl<$Res>
    implements _$TokenStateCopyWith<$Res> {
  __$TokenStateCopyWithImpl(
      _TokenState _value, $Res Function(_TokenState) _then)
      : super(_value, (v) => _then(v as _TokenState));

  @override
  _TokenState get _value => super._value as _TokenState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_TokenState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TokenState implements _TokenState {
  const _$_TokenState({this.token = ''});

  @JsonKey(defaultValue: '')
  @override
  final String? token;

  @override
  String toString() {
    return 'TokenState(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenState &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  _$TokenStateCopyWith<_TokenState> get copyWith =>
      __$TokenStateCopyWithImpl<_TokenState>(this, _$identity);
}

abstract class _TokenState implements TokenState {
  const factory _TokenState({String? token}) = _$_TokenState;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$TokenStateCopyWith<_TokenState> get copyWith =>
      throw _privateConstructorUsedError;
}
