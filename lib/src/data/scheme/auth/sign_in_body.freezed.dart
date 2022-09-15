// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInBody _$SignInBodyFromJson(Map<String, dynamic> json) {
  return _SignInBody.fromJson(json);
}

/// @nodoc
mixin _$SignInBody {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInBodyCopyWith<SignInBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInBodyCopyWith<$Res> {
  factory $SignInBodyCopyWith(
          SignInBody value, $Res Function(SignInBody) then) =
      _$SignInBodyCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$SignInBodyCopyWithImpl<$Res> implements $SignInBodyCopyWith<$Res> {
  _$SignInBodyCopyWithImpl(this._value, this._then);

  final SignInBody _value;
  // ignore: unused_field
  final $Res Function(SignInBody) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInBodyCopyWith<$Res>
    implements $SignInBodyCopyWith<$Res> {
  factory _$$_SignInBodyCopyWith(
          _$_SignInBody value, $Res Function(_$_SignInBody) then) =
      __$$_SignInBodyCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$$_SignInBodyCopyWithImpl<$Res> extends _$SignInBodyCopyWithImpl<$Res>
    implements _$$_SignInBodyCopyWith<$Res> {
  __$$_SignInBodyCopyWithImpl(
      _$_SignInBody _value, $Res Function(_$_SignInBody) _then)
      : super(_value, (v) => _then(v as _$_SignInBody));

  @override
  _$_SignInBody get _value => super._value as _$_SignInBody;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInBody(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInBody implements _SignInBody {
  _$_SignInBody({required this.username, required this.password});

  factory _$_SignInBody.fromJson(Map<String, dynamic> json) =>
      _$$_SignInBodyFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInBody(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInBody &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInBodyCopyWith<_$_SignInBody> get copyWith =>
      __$$_SignInBodyCopyWithImpl<_$_SignInBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInBodyToJson(
      this,
    );
  }
}

abstract class _SignInBody implements SignInBody {
  factory _SignInBody(
      {required final String username,
      required final String password}) = _$_SignInBody;

  factory _SignInBody.fromJson(Map<String, dynamic> json) =
      _$_SignInBody.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignInBodyCopyWith<_$_SignInBody> get copyWith =>
      throw _privateConstructorUsedError;
}
