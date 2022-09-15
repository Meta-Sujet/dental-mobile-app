// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_verification_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendVerificationCode _$SendVerificationCodeFromJson(Map<String, dynamic> json) {
  return _SendVerificationCode.fromJson(json);
}

/// @nodoc
mixin _$SendVerificationCode {
  String get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendVerificationCodeCopyWith<SendVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVerificationCodeCopyWith<$Res> {
  factory $SendVerificationCodeCopyWith(SendVerificationCode value,
          $Res Function(SendVerificationCode) then) =
      _$SendVerificationCodeCopyWithImpl<$Res>;
  $Res call({String mobileNumber});
}

/// @nodoc
class _$SendVerificationCodeCopyWithImpl<$Res>
    implements $SendVerificationCodeCopyWith<$Res> {
  _$SendVerificationCodeCopyWithImpl(this._value, this._then);

  final SendVerificationCode _value;
  // ignore: unused_field
  final $Res Function(SendVerificationCode) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SendVerificationCodeCopyWith<$Res>
    implements $SendVerificationCodeCopyWith<$Res> {
  factory _$$_SendVerificationCodeCopyWith(_$_SendVerificationCode value,
          $Res Function(_$_SendVerificationCode) then) =
      __$$_SendVerificationCodeCopyWithImpl<$Res>;
  @override
  $Res call({String mobileNumber});
}

/// @nodoc
class __$$_SendVerificationCodeCopyWithImpl<$Res>
    extends _$SendVerificationCodeCopyWithImpl<$Res>
    implements _$$_SendVerificationCodeCopyWith<$Res> {
  __$$_SendVerificationCodeCopyWithImpl(_$_SendVerificationCode _value,
      $Res Function(_$_SendVerificationCode) _then)
      : super(_value, (v) => _then(v as _$_SendVerificationCode));

  @override
  _$_SendVerificationCode get _value => super._value as _$_SendVerificationCode;

  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_$_SendVerificationCode(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendVerificationCode implements _SendVerificationCode {
  _$_SendVerificationCode({required this.mobileNumber});

  factory _$_SendVerificationCode.fromJson(Map<String, dynamic> json) =>
      _$$_SendVerificationCodeFromJson(json);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'SendVerificationCode(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendVerificationCode &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SendVerificationCodeCopyWith<_$_SendVerificationCode> get copyWith =>
      __$$_SendVerificationCodeCopyWithImpl<_$_SendVerificationCode>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendVerificationCodeToJson(
      this,
    );
  }
}

abstract class _SendVerificationCode implements SendVerificationCode {
  factory _SendVerificationCode({required final String mobileNumber}) =
      _$_SendVerificationCode;

  factory _SendVerificationCode.fromJson(Map<String, dynamic> json) =
      _$_SendVerificationCode.fromJson;

  @override
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SendVerificationCodeCopyWith<_$_SendVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}
