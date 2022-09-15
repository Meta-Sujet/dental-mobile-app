import '../common/either.dart';

import '../failures/phone_number_failure.dart';
import 'core/value_object.dart';

class PhoneNumber extends ValueObject<PhoneNumberFailure, String> {
  factory PhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return PhoneNumber._(left(const PhoneNumberFailure.empty()));
    } else if (!_patternPhoneNumber.hasMatch(phoneNumber.trim())) {
      return PhoneNumber._(left(const PhoneNumberFailure.invalid()));
    }
    return PhoneNumber._(right(phoneNumber));
  }

  factory PhoneNumber.empty() =>
      PhoneNumber._(left(const PhoneNumberFailure.empty()));

  PhoneNumber._(Either<PhoneNumberFailure, String> value) : super(value);

  static final RegExp _patternPhoneNumber = RegExp(r'^(995)?\d{9}$');
}
