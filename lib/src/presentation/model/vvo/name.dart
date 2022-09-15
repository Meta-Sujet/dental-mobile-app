import '../common/either.dart';
import '../failures/name_failure.dart';
import 'core/value_object.dart';

class Name extends ValueObject<NameFailure, String> {
  factory Name(String name) {
    if (name.isEmpty) {
      return Name._(left(const NameFailure.empty()));
    } else if (name.length < 2) {
      return Name._(left(const NameFailure.tooShort()));
    } else if (name.length > 100) {
      return Name._(left(const NameFailure.tooLong()));
    }
    return Name._(right(name));
  }

  factory Name.empty() => Name._(left(const NameFailure.empty()));

  Name._(Either<NameFailure, String> value) : super(value);
}
