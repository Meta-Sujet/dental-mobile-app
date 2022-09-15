import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_failure.freezed.dart';

@freezed
class PhoneNumberFailure with _$PhoneNumberFailure {
  const factory PhoneNumberFailure.empty() = _empty;
  const factory PhoneNumberFailure.invalid() = _invalid;
}
