import 'package:dental_mobile_app/src/presentation/model/common/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:flutter/material.dart';

import 'src/di/injection_config.dart';
import 'src/presentation/app.dart';
import 'src/presentation/navigation/routes/router.gr.dart';

void main() async {
  // print("The statement 'this machine is connected to the Internet' is: ");
  // print(await InternetConnectionChecker().hasConnection);
  // print(
  //     "Current status: ${await InternetConnectionChecker().connectionStatus}");

  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<AppRouter>(AppRouter());

  configureDependencies();

  runApp(App());
}
