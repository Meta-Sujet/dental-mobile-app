// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthentificationPayload _$$_AuthentificationPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_AuthentificationPayload(
      accessToken: json['accessToken'] as String,
      user: json['user'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_AuthentificationPayloadToJson(
        _$_AuthentificationPayload instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
    };
