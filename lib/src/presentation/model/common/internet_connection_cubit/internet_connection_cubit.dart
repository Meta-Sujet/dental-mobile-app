import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class InternetConnectionCubit extends Cubit<bool> {
  InternetConnectionCubit(bool isInternet) : super(isInternet);

  // void internetConnection(bool connection) {
  //   emit(connection);
  // }
}
