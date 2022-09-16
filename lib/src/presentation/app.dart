import 'package:dental_mobile_app/src/presentation/model/common/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:dental_mobile_app/src/presentation/model/common/user.dart';
import 'package:dental_mobile_app/src/presentation/navigation/routes/router.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:dental_mobile_app/src/presentation/post_cubit/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection_config.dart';
import 'navigation/routes/router.gr.dart';
import 'values/theme.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // bool internetConnection = false;

  // void checkInternet() async {
  //   var listener = InternetConnectionChecker().onStatusChange.listen((status) {
  //     switch (status) {
  //       case InternetConnectionStatus.connected:
  //         setState(() {
  //           internetConnection = true;
  //         });
  //         break;
  //       case InternetConnectionStatus.disconnected:
  //         setState(() {
  //           internetConnection = false;
  //         });
  //         break;
  //     }
  //   });

  //   await Future.delayed(Duration(seconds: 30));
  //   await listener.cancel();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   checkInternet();
  // }

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    // print('-----------------------------$internetConnection');

    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => PostCubit(),
        ),
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
      ],
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
