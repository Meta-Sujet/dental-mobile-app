import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../di/injection_config.dart';
import '../../../../model/vvo/password.dart';
import '../../../../model/vvo/repeated_pass.dart';
import '../../../../navigation/routes/router.gr.dart';

part 'new_password_page_cubit.freezed.dart';

@freezed
class NewPasswordPageState with _$NewPasswordPageState {
  const factory NewPasswordPageState({
    required Password password,
    required RepeatedPassword repeatedPassword,
    required bool validateForm,
    required bool success,
  }) = _NewPasswordPageState;

  factory NewPasswordPageState.initial() => NewPasswordPageState(
        password: Password.empty(),
        repeatedPassword: RepeatedPassword.empty(),
        validateForm: false,
        success: false,
      );
}

@injectable
class NewPasswordPageCubit extends Cubit<NewPasswordPageState> {
  NewPasswordPageCubit() : super(NewPasswordPageState.initial());

  String _repeatedPassValue = '';

  passChanged(String val) {
    emit(state.copyWith(
      password: Password(val),
      repeatedPassword: RepeatedPassword(val, _repeatedPassValue),
      success: false,
    ));
  }

  repeatedPassChanged(String val) {
    emit(state.copyWith(
        success: false,
        repeatedPassword: RepeatedPassword(state.password.getOrElse(''), val)));
    _repeatedPassValue = val;
  }

  buttonPressed() async {
    emit(state.copyWith(validateForm: true));

    if (!state.password.isValid || !state.repeatedPassword.isValid) {
      return;
    }

    emit(state.copyWith(success: true));

    await Future.delayed(const Duration(seconds: 4));

    emit(state.copyWith(validateForm: true, success: false));

    // navigatorKey.currentState?.pushNamed(
    //   Routes.signIn,
    // );

    getIt<AppRouter>().push(SignInRouter());
  }
}
