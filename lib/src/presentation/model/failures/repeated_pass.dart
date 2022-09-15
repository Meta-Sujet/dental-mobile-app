import 'package:freezed_annotation/freezed_annotation.dart';

part 'repeated_pass.freezed.dart';

@freezed
class RepeatedPasswordFailure with _$RepeatedPasswordFailure {
  const factory RepeatedPasswordFailure.empty() = _empty;
  const factory RepeatedPasswordFailure.doesNotMatch() = _doesNotMatch;
}
