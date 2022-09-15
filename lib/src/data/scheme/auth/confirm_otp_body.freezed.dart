// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_otp_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmOtpBody _$ConfirmOtpBodyFromJson(Map<String, dynamic> json) {
  return _ConfirmOtpBody.fromJson(json);
}

/// @nodoc
mixin _$ConfirmOtpBody {
  String get mobileNumber => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmOtpBodyCopyWith<ConfirmOtpBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmOtpBodyCopyWith<$Res> {
  factory $ConfirmOtpBodyCopyWith(
          ConfirmOtpBody value, $Res Function(ConfirmOtpBody) then) =
      _$ConfirmOtpBodyCopyWithImpl<$Res>;
  $Res call({String mobileNumber, String otp});
}

/// @nodoc
class _$ConfirmOtpBodyCopyWithImpl<$Res>
    implements $ConfirmOtpBodyCopyWith<$Res> {
  _$ConfirmOtpBodyCopyWithImpl(this._value, this._then);

  final ConfirmOtpBody _value;
  // ignore: unused_field
  final $Res Function(ConfirmOtpBody) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConfirmOtpBodyCopyWith<$Res>
    implements $ConfirmOtpBodyCopyWith<$Res> {
  factory _$$_ConfirmOtpBodyCopyWith(
          _$_ConfirmOtpBody value, $Res Function(_$_ConfirmOtpBody) then) =
      __$$_ConfirmOtpBodyCopyWithImpl<$Res>;
  @override
  $Res call({String mobileNumber, String otp});
}

/// @nodoc
class __$$_ConfirmOtpBodyCopyWithImpl<$Res>
    extends _$ConfirmOtpBodyCopyWithImpl<$Res>
    implements _$$_ConfirmOtpBodyCopyWith<$Res> {
  __$$_ConfirmOtpBodyCopyWithImpl(
      _$_ConfirmOtpBody _value, $Res Function(_$_ConfirmOtpBody) _then)
      : super(_value, (v) => _then(v as _$_ConfirmOtpBody));

  @override
  _$_ConfirmOtpBody get _value => super._value as _$_ConfirmOtpBody;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_ConfirmOtpBody(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfirmOtpBody implements _ConfirmOtpBody {
  _$_ConfirmOtpBody({required this.mobileNumber, required this.otp});

  factory _$_ConfirmOtpBody.fromJson(Map<String, dynamic> json) =>
      _$$_ConfirmOtpBodyFromJson(json);

  @override
  final String mobileNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'ConfirmOtpBody(mobileNumber: $mobileNumber, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmOtpBody &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$$_ConfirmOtpBodyCopyWith<_$_ConfirmOtpBody> get copyWith =>
      __$$_ConfirmOtpBodyCopyWithImpl<_$_ConfirmOtpBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfirmOtpBodyToJson(
      this,
    );
  }
}

abstract class _ConfirmOtpBody implements ConfirmOtpBody {
  factory _ConfirmOtpBody(
      {required final String mobileNumber,
      required final String otp}) = _$_ConfirmOtpBody;

  factory _ConfirmOtpBody.fromJson(Map<String, dynamic> json) =
      _$_ConfirmOtpBody.fromJson;

  @override
  String get mobileNumber;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmOtpBodyCopyWith<_$_ConfirmOtpBody> get copyWith =>
      throw _privateConstructorUsedError;
}
