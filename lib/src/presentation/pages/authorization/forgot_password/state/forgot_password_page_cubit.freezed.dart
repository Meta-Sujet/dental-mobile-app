// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordPageState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordPageStateCopyWith<ForgotPasswordPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordPageStateCopyWith<$Res> {
  factory $ForgotPasswordPageStateCopyWith(ForgotPasswordPageState value,
          $Res Function(ForgotPasswordPageState) then) =
      _$ForgotPasswordPageStateCopyWithImpl<$Res>;
  $Res call({PhoneNumber phoneNumber, bool validateForm});
}

/// @nodoc
class _$ForgotPasswordPageStateCopyWithImpl<$Res>
    implements $ForgotPasswordPageStateCopyWith<$Res> {
  _$ForgotPasswordPageStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordPageState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordPageState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordPageStateCopyWith<$Res>
    implements $ForgotPasswordPageStateCopyWith<$Res> {
  factory _$$_ForgotPasswordPageStateCopyWith(_$_ForgotPasswordPageState value,
          $Res Function(_$_ForgotPasswordPageState) then) =
      __$$_ForgotPasswordPageStateCopyWithImpl<$Res>;
  @override
  $Res call({PhoneNumber phoneNumber, bool validateForm});
}

/// @nodoc
class __$$_ForgotPasswordPageStateCopyWithImpl<$Res>
    extends _$ForgotPasswordPageStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordPageStateCopyWith<$Res> {
  __$$_ForgotPasswordPageStateCopyWithImpl(_$_ForgotPasswordPageState _value,
      $Res Function(_$_ForgotPasswordPageState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordPageState));

  @override
  _$_ForgotPasswordPageState get _value =>
      super._value as _$_ForgotPasswordPageState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_$_ForgotPasswordPageState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordPageState implements _ForgotPasswordPageState {
  const _$_ForgotPasswordPageState(
      {required this.phoneNumber, required this.validateForm});

  @override
  final PhoneNumber phoneNumber;
  @override
  final bool validateForm;

  @override
  String toString() {
    return 'ForgotPasswordPageState(phoneNumber: $phoneNumber, validateForm: $validateForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordPageState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.validateForm, validateForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(validateForm));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordPageStateCopyWith<_$_ForgotPasswordPageState>
      get copyWith =>
          __$$_ForgotPasswordPageStateCopyWithImpl<_$_ForgotPasswordPageState>(
              this, _$identity);
}

abstract class _ForgotPasswordPageState implements ForgotPasswordPageState {
  const factory _ForgotPasswordPageState(
      {required final PhoneNumber phoneNumber,
      required final bool validateForm}) = _$_ForgotPasswordPageState;

  @override
  PhoneNumber get phoneNumber;
  @override
  bool get validateForm;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordPageStateCopyWith<_$_ForgotPasswordPageState>
      get copyWith => throw _privateConstructorUsedError;
}
