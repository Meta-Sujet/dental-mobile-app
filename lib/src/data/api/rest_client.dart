import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../scheme/auth/authentification_payload.dart';
import '../scheme/auth/confirm_otp_body.dart';
import '../scheme/auth/send_verification_body.dart';
import '../scheme/auth/sign_in_body.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api-soft.dentalapp.ge")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/auth/sign-in')
  Future<AuthentificationPayload> signIn(@Body() SignInBody body);

  @POST('/auth/recover-password/send-verification-code')
  Future<void> sendVerificationCode(@Body() SendVerificationCode body);

  @POST('/auth/recover-password/confirm-otp')
  Future<void> confirmOtp(@Body() ConfirmOtpBody body);
}
