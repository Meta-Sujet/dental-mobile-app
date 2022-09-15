// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInPageState {
  Name get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInPageStateCopyWith<SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageStateCopyWith<$Res> {
  factory $SignInPageStateCopyWith(
          SignInPageState value, $Res Function(SignInPageState) then) =
      _$SignInPageStateCopyWithImpl<$Res>;
  $Res call({Name name, Password password, bool validateForm});
}

/// @nodoc
class _$SignInPageStateCopyWithImpl<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  _$SignInPageStateCopyWithImpl(this._value, this._then);

  final SignInPageState _value;
  // ignore: unused_field
  final $Res Function(SignInPageState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInPageStateCopyWith<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  factory _$$_SignInPageStateCopyWith(
          _$_SignInPageState value, $Res Function(_$_SignInPageState) then) =
      __$$_SignInPageStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name, Password password, bool validateForm});
}

/// @nodoc
class __$$_SignInPageStateCopyWithImpl<$Res>
    extends _$SignInPageStateCopyWithImpl<$Res>
    implements _$$_SignInPageStateCopyWith<$Res> {
  __$$_SignInPageStateCopyWithImpl(
      _$_SignInPageState _value, $Res Function(_$_SignInPageState) _then)
      : super(_value, (v) => _then(v as _$_SignInPageState));

  @override
  _$_SignInPageState get _value => super._value as _$_SignInPageState;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? validateForm = freezed,
  }) {
    return _then(_$_SignInPageState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInPageState implements _SignInPageState {
  const _$_SignInPageState(
      {required this.name, required this.password, required this.validateForm});

  @override
  final Name name;
  @override
  final Password password;
  @override
  final bool validateForm;

  @override
  String toString() {
    return 'SignInPageState(name: $name, password: $password, validateForm: $validateForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInPageState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.validateForm, validateForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(validateForm));

  @JsonKey(ignore: true)
  @override
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      __$$_SignInPageStateCopyWithImpl<_$_SignInPageState>(this, _$identity);
}

abstract class _SignInPageState implements SignInPageState {
  const factory _SignInPageState(
      {required final Name name,
      required final Password password,
      required final bool validateForm}) = _$_SignInPageState;

  @override
  Name get name;
  @override
  Password get password;
  @override
  bool get validateForm;
  @override
  @JsonKey(ignore: true)
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
