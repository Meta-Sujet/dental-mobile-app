import 'package:freezed_annotation/freezed_annotation.dart';

part 'uuid_body.freezed.dart';
part 'uuid_body.g.dart';

@freezed
class Uuid with _$Uuid {
  factory Uuid({
    required String uuid,
  }) = _Uuid;

  factory Uuid.fromJson(Map<String, dynamic> json) => _$UuidFromJson(json);
}
