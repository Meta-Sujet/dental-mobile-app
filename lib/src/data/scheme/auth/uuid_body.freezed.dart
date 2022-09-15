// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'uuid_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Uuid _$UuidFromJson(Map<String, dynamic> json) {
  return _Uuid.fromJson(json);
}

/// @nodoc
mixin _$Uuid {
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UuidCopyWith<Uuid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UuidCopyWith<$Res> {
  factory $UuidCopyWith(Uuid value, $Res Function(Uuid) then) =
      _$UuidCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class _$UuidCopyWithImpl<$Res> implements $UuidCopyWith<$Res> {
  _$UuidCopyWithImpl(this._value, this._then);

  final Uuid _value;
  // ignore: unused_field
  final $Res Function(Uuid) _then;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UuidCopyWith<$Res> implements $UuidCopyWith<$Res> {
  factory _$$_UuidCopyWith(_$_Uuid value, $Res Function(_$_Uuid) then) =
      __$$_UuidCopyWithImpl<$Res>;
  @override
  $Res call({String uuid});
}

/// @nodoc
class __$$_UuidCopyWithImpl<$Res> extends _$UuidCopyWithImpl<$Res>
    implements _$$_UuidCopyWith<$Res> {
  __$$_UuidCopyWithImpl(_$_Uuid _value, $Res Function(_$_Uuid) _then)
      : super(_value, (v) => _then(v as _$_Uuid));

  @override
  _$_Uuid get _value => super._value as _$_Uuid;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_$_Uuid(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Uuid implements _Uuid {
  _$_Uuid({required this.uuid});

  factory _$_Uuid.fromJson(Map<String, dynamic> json) => _$$_UuidFromJson(json);

  @override
  final String uuid;

  @override
  String toString() {
    return 'Uuid(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Uuid &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_UuidCopyWith<_$_Uuid> get copyWith =>
      __$$_UuidCopyWithImpl<_$_Uuid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UuidToJson(
      this,
    );
  }
}

abstract class _Uuid implements Uuid {
  factory _Uuid({required final String uuid}) = _$_Uuid;

  factory _Uuid.fromJson(Map<String, dynamic> json) = _$_Uuid.fromJson;

  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_UuidCopyWith<_$_Uuid> get copyWith => throw _privateConstructorUsedError;
}
