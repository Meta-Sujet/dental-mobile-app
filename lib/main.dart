import 'package:flutter/material.dart';

import 'src/di/injection_config.dart';
import 'src/presentation/app.dart';
import 'src/presentation/navigation/routes/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<AppRouter>(AppRouter());

  configureDependencies();

  runApp(App());
}
