import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String identityNumber,
    required String gender,
    required int bloodGroup,
    required String birthDate,
    required String address,
    required String workplace,
    required String balance,
  }) = _User;

  factory User.initial() => User(
      id: '',
      username: '',
      firstName: '',
      lastName: '',
      phone: '',
      email: '',
      identityNumber: '',
      gender: '',
      bloodGroup: 0,
      birthDate: '',
      address: '',
      workplace: '',
      balance: '');

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@singleton
class UserCubit extends Cubit<User> {
  UserCubit() : super(User.initial());

  void addUser(Map<String, Object?> json) {
    var userData = User.fromJson(json);
    emit(userData);
  }
}
