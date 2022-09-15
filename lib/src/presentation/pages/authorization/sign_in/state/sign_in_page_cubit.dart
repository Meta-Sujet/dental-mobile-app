import 'package:dental_mobile_app/src/presentation/navigation/routes/router.gr.dart';
import 'package:dental_mobile_app/src/presentation/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../data/scheme/auth/authentification_payload.dart';
import '../../../../../data/services/auth_service.dart';
import '../../../../../di/injection_config.dart';
import '../../../../model/vvo/name.dart';
import '../../../../model/vvo/password.dart';

part 'sign_in_page_cubit.freezed.dart';

@freezed
class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    required Name name,
    required Password password,
    required bool validateForm,
  }) = _SignInPageState;

  factory SignInPageState.initial() => SignInPageState(
        name: Name.empty(),
        password: Password.empty(),
        validateForm: false,
      );
}

@injectable
class SignInPageCubit extends Cubit<SignInPageState> {
  SignInPageCubit(this._authSecvice) : super(SignInPageState.initial());

  final AuthService _authSecvice;

  void onNameChanged(String val) {
    emit(state.copyWith(name: Name(val)));
  }

  void onPasswordChanged(String val) {
    // print(val);
    emit(state.copyWith(password: Password(val)));
  }

  Future<void> onLoginPressed() async {
    emit(
      state.copyWith(validateForm: true),
    );

    if (!state.name.isValid || !state.password.isValid) {
      return;
    }

    AuthentificationPayload? result = await _authSecvice.signIn(
        username: state.name.getOrThrow, password: state.password.getOrThrow);
    if (result != null) {
      // await const FlutterSecureStorage()
      //     .write(key: 'accessToken', value: result.accessToken);

      getIt<AppRouter>()
          .pushAndPopUntil(HomePageRouter(), predicate: (route) => false);

      // .pushAndPopUntil(HomeRoute(), predicate: (route) => false)
    }
  }
}
