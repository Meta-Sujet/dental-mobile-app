import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentification_payload.freezed.dart';
part 'authentification_payload.g.dart';

@freezed
class AuthentificationPayload with _$AuthentificationPayload {
  factory AuthentificationPayload({
    required String accessToken,
    required Map<String, Object?> user,
  }) = _AuthentificationPayload;

  factory AuthentificationPayload.fromJson(Map<String, dynamic> json) =>
      _$AuthentificationPayloadFromJson(json);
}
