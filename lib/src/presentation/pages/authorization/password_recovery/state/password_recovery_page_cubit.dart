import 'package:dental_mobile_app/src/presentation/model/vvo/phone_number.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../data/services/auth_service.dart';
import '../../../../../di/injection_config.dart';
import '../../../../model/vvo/verification_code.dart';
import '../../../../navigation/route_args/password_recovery_page_args.dart';
import '../../../../navigation/routes/router.gr.dart';

part 'password_recovery_page_cubit.freezed.dart';

@freezed
class PasswordRecoveryPageState with _$PasswordRecoveryPageState {
  const factory PasswordRecoveryPageState({
    required PhoneNumber mobileNumber,
    required VerificationCode otp,
    required bool validateForm,
  }) = _PasswordRecoveryPageState;

  factory PasswordRecoveryPageState.initial() => PasswordRecoveryPageState(
        mobileNumber: PhoneNumber.empty(),
        otp: VerificationCode.empty(),
        validateForm: false,
      );
}

@injectable
class PasswordRecoveryPageCubit extends Cubit<PasswordRecoveryPageState> {
  PasswordRecoveryPageCubit(this._authSecvice)
      : super(PasswordRecoveryPageState.initial());

  final AuthService _authSecvice;

  late final PasswordRecoveryPageArgs _args;

  void init(PasswordRecoveryPageArgs args) {
    _args = args;

    emit(state.copyWith(mobileNumber: PhoneNumber(_args.phoneNumber)));
  }

  onCodeChanged(String value) =>
      emit(state.copyWith(otp: VerificationCode(value)));

  Future<void> onNextPressed() async {
    emit(
      state.copyWith(validateForm: true),
    );

    if (state.otp.isValid) {
      _authSecvice.confirmOtp(
          mobileNumber: state.mobileNumber.getOrThrow,
          otp: state.otp.getOrThrow);
      getIt<AppRouter>().push(NewPasswordRoute());
    }

    if (!state.mobileNumber.isValid) {
      return;
    }
  }
}
