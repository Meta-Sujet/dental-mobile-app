import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_failure.freezed.dart';

@freezed
class PasswordFailure with _$PasswordFailure {
  const factory PasswordFailure.empty() = _empty;
  const factory PasswordFailure.tooLong() = _tooLong;
  const factory PasswordFailure.tooShort() = _tooShort;
}
