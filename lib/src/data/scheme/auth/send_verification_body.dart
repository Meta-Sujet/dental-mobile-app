import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_verification_body.freezed.dart';
part 'send_verification_body.g.dart';

@freezed
class SendVerificationCode with _$SendVerificationCode {
  factory SendVerificationCode({
    required String mobileNumber,
  }) = _SendVerificationCode;

  factory SendVerificationCode.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeFromJson(json);
}
