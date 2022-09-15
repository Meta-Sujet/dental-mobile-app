import '../common/either.dart';
import '../failures/password_failure.dart';
import 'core/value_object.dart';

class Password extends ValueObject<PasswordFailure, String> {
  factory Password(String value) {
    if (value.isEmpty) {
      return Password._(left(PasswordFailure.empty()));
    }
    if (value.length < 6) {
      return Password._(left(PasswordFailure.tooShort()));
    }
    if (value.length > 256) {
      return Password._(left(PasswordFailure.tooLong()));
    }

    return Password._(right(value));
  }

  factory Password.empty() => Password._(left(PasswordFailure.empty()));

  Password._(Either<PasswordFailure, String> value) : super(value);
}
