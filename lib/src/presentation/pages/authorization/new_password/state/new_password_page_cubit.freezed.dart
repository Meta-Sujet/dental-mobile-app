// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_password_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewPasswordPageState {
  Password get password => throw _privateConstructorUsedError;
  RepeatedPassword get repeatedPassword => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPasswordPageStateCopyWith<NewPasswordPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordPageStateCopyWith<$Res> {
  factory $NewPasswordPageStateCopyWith(NewPasswordPageState value,
          $Res Function(NewPasswordPageState) then) =
      _$NewPasswordPageStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      RepeatedPassword repeatedPassword,
      bool validateForm,
      bool success});
}

/// @nodoc
class _$NewPasswordPageStateCopyWithImpl<$Res>
    implements $NewPasswordPageStateCopyWith<$Res> {
  _$NewPasswordPageStateCopyWithImpl(this._value, this._then);

  final NewPasswordPageState _value;
  // ignore: unused_field
  final $Res Function(NewPasswordPageState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatedPassword = freezed,
    Object? validateForm = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatedPassword: repeatedPassword == freezed
          ? _value.repeatedPassword
          : repeatedPassword // ignore: cast_nullable_to_non_nullable
              as RepeatedPassword,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NewPasswordPageStateCopyWith<$Res>
    implements $NewPasswordPageStateCopyWith<$Res> {
  factory _$$_NewPasswordPageStateCopyWith(_$_NewPasswordPageState value,
          $Res Function(_$_NewPasswordPageState) then) =
      __$$_NewPasswordPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      RepeatedPassword repeatedPassword,
      bool validateForm,
      bool success});
}

/// @nodoc
class __$$_NewPasswordPageStateCopyWithImpl<$Res>
    extends _$NewPasswordPageStateCopyWithImpl<$Res>
    implements _$$_NewPasswordPageStateCopyWith<$Res> {
  __$$_NewPasswordPageStateCopyWithImpl(_$_NewPasswordPageState _value,
      $Res Function(_$_NewPasswordPageState) _then)
      : super(_value, (v) => _then(v as _$_NewPasswordPageState));

  @override
  _$_NewPasswordPageState get _value => super._value as _$_NewPasswordPageState;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatedPassword = freezed,
    Object? validateForm = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_NewPasswordPageState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatedPassword: repeatedPassword == freezed
          ? _value.repeatedPassword
          : repeatedPassword // ignore: cast_nullable_to_non_nullable
              as RepeatedPassword,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewPasswordPageState implements _NewPasswordPageState {
  const _$_NewPasswordPageState(
      {required this.password,
      required this.repeatedPassword,
      required this.validateForm,
      required this.success});

  @override
  final Password password;
  @override
  final RepeatedPassword repeatedPassword;
  @override
  final bool validateForm;
  @override
  final bool success;

  @override
  String toString() {
    return 'NewPasswordPageState(password: $password, repeatedPassword: $repeatedPassword, validateForm: $validateForm, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPasswordPageState &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatedPassword, repeatedPassword) &&
            const DeepCollectionEquality()
                .equals(other.validateForm, validateForm) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatedPassword),
      const DeepCollectionEquality().hash(validateForm),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$$_NewPasswordPageStateCopyWith<_$_NewPasswordPageState> get copyWith =>
      __$$_NewPasswordPageStateCopyWithImpl<_$_NewPasswordPageState>(
          this, _$identity);
}

abstract class _NewPasswordPageState implements NewPasswordPageState {
  const factory _NewPasswordPageState(
      {required final Password password,
      required final RepeatedPassword repeatedPassword,
      required final bool validateForm,
      required final bool success}) = _$_NewPasswordPageState;

  @override
  Password get password;
  @override
  RepeatedPassword get repeatedPassword;
  @override
  bool get validateForm;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_NewPasswordPageStateCopyWith<_$_NewPasswordPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
