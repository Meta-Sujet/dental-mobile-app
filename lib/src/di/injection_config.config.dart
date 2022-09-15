// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/rest_client.dart' as _i5;
import '../data/services/auth_service.dart' as _i6;
import '../presentation/pages/authorization/forgot_password/state/forgot_password_page_cubit.dart'
    as _i7;
import '../presentation/pages/authorization/new_password/state/new_password_page_cubit.dart'
    as _i4;
import '../presentation/pages/authorization/password_recovery/state/password_recovery_page_cubit.dart'
    as _i8;
import '../presentation/pages/authorization/sign_in/state/sign_in_page_cubit.dart'
    as _i9;
import 'modules/network_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.Dio>(() => networkModule.dio());
  gh.factory<_i4.NewPasswordPageCubit>(() => _i4.NewPasswordPageCubit());
  gh.lazySingleton<_i5.RestClient>(() => networkModule.client(get<_i3.Dio>()));
  gh.lazySingleton<_i6.AuthService>(
      () => _i6.AuthService(get<_i5.RestClient>()));
  gh.factory<_i7.ForgotPasswordPageCubit>(
      () => _i7.ForgotPasswordPageCubit(get<_i6.AuthService>()));
  gh.factory<_i8.PasswordRecoveryPageCubit>(
      () => _i8.PasswordRecoveryPageCubit(get<_i6.AuthService>()));
  gh.factory<_i9.SignInPageCubit>(
      () => _i9.SignInPageCubit(get<_i6.AuthService>()));
  return get;
}

class _$NetworkModule extends _i10.NetworkModule {}
