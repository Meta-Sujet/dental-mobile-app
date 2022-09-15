// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentification_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthentificationPayload _$AuthentificationPayloadFromJson(
    Map<String, dynamic> json) {
  return _AuthentificationPayload.fromJson(json);
}

/// @nodoc
mixin _$AuthentificationPayload {
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthentificationPayloadCopyWith<AuthentificationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthentificationPayloadCopyWith<$Res> {
  factory $AuthentificationPayloadCopyWith(AuthentificationPayload value,
          $Res Function(AuthentificationPayload) then) =
      _$AuthentificationPayloadCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$AuthentificationPayloadCopyWithImpl<$Res>
    implements $AuthentificationPayloadCopyWith<$Res> {
  _$AuthentificationPayloadCopyWithImpl(this._value, this._then);

  final AuthentificationPayload _value;
  // ignore: unused_field
  final $Res Function(AuthentificationPayload) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthentificationPayloadCopyWith<$Res>
    implements $AuthentificationPayloadCopyWith<$Res> {
  factory _$$_AuthentificationPayloadCopyWith(_$_AuthentificationPayload value,
          $Res Function(_$_AuthentificationPayload) then) =
      __$$_AuthentificationPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken});
}

/// @nodoc
class __$$_AuthentificationPayloadCopyWithImpl<$Res>
    extends _$AuthentificationPayloadCopyWithImpl<$Res>
    implements _$$_AuthentificationPayloadCopyWith<$Res> {
  __$$_AuthentificationPayloadCopyWithImpl(_$_AuthentificationPayload _value,
      $Res Function(_$_AuthentificationPayload) _then)
      : super(_value, (v) => _then(v as _$_AuthentificationPayload));

  @override
  _$_AuthentificationPayload get _value =>
      super._value as _$_AuthentificationPayload;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_$_AuthentificationPayload(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthentificationPayload implements _AuthentificationPayload {
  _$_AuthentificationPayload({required this.accessToken});

  factory _$_AuthentificationPayload.fromJson(Map<String, dynamic> json) =>
      _$$_AuthentificationPayloadFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthentificationPayload(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthentificationPayload &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_AuthentificationPayloadCopyWith<_$_AuthentificationPayload>
      get copyWith =>
          __$$_AuthentificationPayloadCopyWithImpl<_$_AuthentificationPayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthentificationPayloadToJson(
      this,
    );
  }
}

abstract class _AuthentificationPayload implements AuthentificationPayload {
  factory _AuthentificationPayload({required final String accessToken}) =
      _$_AuthentificationPayload;

  factory _AuthentificationPayload.fromJson(Map<String, dynamic> json) =
      _$_AuthentificationPayload.fromJson;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthentificationPayloadCopyWith<_$_AuthentificationPayload>
      get copyWith => throw _privateConstructorUsedError;
}
