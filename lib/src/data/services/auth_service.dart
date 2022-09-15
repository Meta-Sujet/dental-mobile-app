import 'package:injectable/injectable.dart';

import '../api/rest_client.dart';
import '../scheme/auth/authentification_payload.dart';
import '../scheme/auth/confirm_otp_body.dart';
import '../scheme/auth/send_verification_body.dart';
import '../scheme/auth/sign_in_body.dart';

@lazySingleton
class AuthService {
  AuthService(this._client);

  final RestClient _client;

  Future<AuthentificationPayload?> signIn({
    required String username,
    required String password,
  }) async {
    try {
      var body = SignInBody(password: password, username: username);
      return _client.signIn(body);
    } catch (e) {}
    return null;
  }

  Future<void> sendVerificationCode({
    required String mobileNumber,
  }) async {
    try {
      var body = SendVerificationCode(mobileNumber: mobileNumber);
      return _client.sendVerificationCode(body);
    } catch (e) {}
  }

  Future<void> confirmOtp({
    required String mobileNumber,
    required String otp,
  }) async {
    try {
      var body = ConfirmOtpBody(mobileNumber: mobileNumber, otp: otp);
      return _client.confirmOtp(body);
    } catch (e) {
      // throw Exception('Uuid');
    }
  }
}
