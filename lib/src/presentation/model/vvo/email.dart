import '../common/either.dart';
import '../failures/email_failure.dart';
import 'core/value_object.dart';

class Email extends ValueObject<EmailFailure, String> {
  factory Email(String email) {
    if (email.isEmpty) {
      return Email._(left(const EmailFailure.empty()));
    } else if (!_emailPattern.hasMatch(email)) {
      return Email._(left(const EmailFailure.invalid()));
    }
    return Email._(right(email));
  }

  factory Email.empty() => Email._(left(const EmailFailure.empty()));

  Email._(Either<EmailFailure, String> value) : super(value);

  static final RegExp _emailPattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
}
