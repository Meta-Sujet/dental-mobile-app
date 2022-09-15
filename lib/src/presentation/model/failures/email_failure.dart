import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_failure.freezed.dart';

@freezed
class EmailFailure with _$EmailFailure {
  const factory EmailFailure.empty() = _empty;
  const factory EmailFailure.invalid() = _invalid;
  const factory EmailFailure.tooLong() = _tooLong;
}
