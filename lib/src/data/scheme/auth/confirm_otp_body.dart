import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_otp_body.freezed.dart';
part 'confirm_otp_body.g.dart';

@freezed
class ConfirmOtpBody with _$ConfirmOtpBody {
  factory ConfirmOtpBody({
    required String mobileNumber,
    required String otp,
  }) = _ConfirmOtpBody;

  factory ConfirmOtpBody.fromJson(Map<String, dynamic> json) =>
      _$ConfirmOtpBodyFromJson(json);
}
