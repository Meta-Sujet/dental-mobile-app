import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_failure.freezed.dart';

@freezed
class NameFailure with _$NameFailure {
  const factory NameFailure.empty() = _empty;
  const factory NameFailure.tooShort() = _tooShort;
  const factory NameFailure.tooLong() = _tooLong;
}
