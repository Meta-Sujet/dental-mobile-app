// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_recovery_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordRecoveryPageState {
  PhoneNumber get mobileNumber => throw _privateConstructorUsedError;
  VerificationCode get otp => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordRecoveryPageStateCopyWith<PasswordRecoveryPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRecoveryPageStateCopyWith<$Res> {
  factory $PasswordRecoveryPageStateCopyWith(PasswordRecoveryPageState value,
          $Res Function(PasswordRecoveryPageState) then) =
      _$PasswordRecoveryPageStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneNumber mobileNumber, VerificationCode otp, bool validateForm});
}

/// @nodoc
class _$PasswordRecoveryPageStateCopyWithImpl<$Res>
    implements $PasswordRecoveryPageStateCopyWith<$Res> {
  _$PasswordRecoveryPageStateCopyWithImpl(this._value, this._then);

  final PasswordRecoveryPageState _value;
  // ignore: unused_field
  final $Res Function(PasswordRecoveryPageState) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordRecoveryPageStateCopyWith<$Res>
    implements $PasswordRecoveryPageStateCopyWith<$Res> {
  factory _$$_PasswordRecoveryPageStateCopyWith(
          _$_PasswordRecoveryPageState value,
          $Res Function(_$_PasswordRecoveryPageState) then) =
      __$$_PasswordRecoveryPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneNumber mobileNumber, VerificationCode otp, bool validateForm});
}

/// @nodoc
class __$$_PasswordRecoveryPageStateCopyWithImpl<$Res>
    extends _$PasswordRecoveryPageStateCopyWithImpl<$Res>
    implements _$$_PasswordRecoveryPageStateCopyWith<$Res> {
  __$$_PasswordRecoveryPageStateCopyWithImpl(
      _$_PasswordRecoveryPageState _value,
      $Res Function(_$_PasswordRecoveryPageState) _then)
      : super(_value, (v) => _then(v as _$_PasswordRecoveryPageState));

  @override
  _$_PasswordRecoveryPageState get _value =>
      super._value as _$_PasswordRecoveryPageState;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otp = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_$_PasswordRecoveryPageState(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasswordRecoveryPageState implements _PasswordRecoveryPageState {
  const _$_PasswordRecoveryPageState(
      {required this.mobileNumber,
      required this.otp,
      required this.validateForm});

  @override
  final PhoneNumber mobileNumber;
  @override
  final VerificationCode otp;
  @override
  final bool validateForm;

  @override
  String toString() {
    return 'PasswordRecoveryPageState(mobileNumber: $mobileNumber, otp: $otp, validateForm: $validateForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordRecoveryPageState &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.validateForm, validateForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(validateForm));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordRecoveryPageStateCopyWith<_$_PasswordRecoveryPageState>
      get copyWith => __$$_PasswordRecoveryPageStateCopyWithImpl<
          _$_PasswordRecoveryPageState>(this, _$identity);
}

abstract class _PasswordRecoveryPageState implements PasswordRecoveryPageState {
  const factory _PasswordRecoveryPageState(
      {required final PhoneNumber mobileNumber,
      required final VerificationCode otp,
      required final bool validateForm}) = _$_PasswordRecoveryPageState;

  @override
  PhoneNumber get mobileNumber;
  @override
  VerificationCode get otp;
  @override
  bool get validateForm;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordRecoveryPageStateCopyWith<_$_PasswordRecoveryPageState>
      get copyWith => throw _privateConstructorUsedError;
}
