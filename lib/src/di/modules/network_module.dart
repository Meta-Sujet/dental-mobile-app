import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../data/api/interceptors/pretty_log_interceptor.dart';
import '../../data/api/rest_client.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    final Dio dio = Dio(BaseOptions(
      connectTimeout: 20000,
      sendTimeout: 20000,
      receiveTimeout: 20000,
    ));

    dio.interceptors.add(PrettyLogInterceptor(logPrint: Logger().d));

    return dio;
  }

  @lazySingleton
  RestClient client(Dio dio) {
    return RestClient(dio);
  }
}
