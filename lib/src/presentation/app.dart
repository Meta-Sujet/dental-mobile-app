import 'package:dental_mobile_app/src/presentation/navigation/routes/router.dart';
import 'package:dental_mobile_app/src/presentation/post_cubit/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection_config.dart';
import 'navigation/routes/router.gr.dart';
import 'values/theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();

    return BlocProvider<PostCubit>(
      create: (context) => PostCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        title: 'Dental App',
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate(),
      ),
    );
  }
}
