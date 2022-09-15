import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../data/services/auth_service.dart';
import '../../../../../di/injection_config.dart';
import '../../../../model/vvo/phone_number.dart';
import '../../../../navigation/route_args/password_recovery_page_args.dart';
import '../../../../navigation/routes/router.gr.dart';

part 'forgot_password_page_cubit.freezed.dart';

@freezed
class ForgotPasswordPageState with _$ForgotPasswordPageState {
  const factory ForgotPasswordPageState({
    required PhoneNumber phoneNumber,
    required bool validateForm,
  }) = _ForgotPasswordPageState;

  factory ForgotPasswordPageState.initial() => ForgotPasswordPageState(
        phoneNumber: PhoneNumber.empty(),
        validateForm: false,
      );
}

@injectable
class ForgotPasswordPageCubit extends Cubit<ForgotPasswordPageState> {
  ForgotPasswordPageCubit(this._authService)
      : super(ForgotPasswordPageState.initial());

  final AuthService _authService;

  void onPhoneNumberChanged(String value) =>
      emit(state.copyWith(phoneNumber: PhoneNumber(value)));

  Future<void> onNextPressed() async {
    emit(
      state.copyWith(validateForm: true),
    );

    if (!state.phoneNumber.isValid) {
      return;
    }

    _authService.sendVerificationCode(
      mobileNumber: state.phoneNumber.getOrThrow,
    );

    getIt<AppRouter>().push(
      PasswordRecoveryRoute(
        args:
            PasswordRecoveryPageArgs(phoneNumber: state.phoneNumber.getOrThrow),
      ),
    );

    // navigatorKey.currentState?.pushNamed(
    //   Routes.passRecovery,
    //   arguments:
    //       PassRecoveryPageArgs(phoneNumber: state.phoneNumber.getOrThrow),
    // );
  }
}
