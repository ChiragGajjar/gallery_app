import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class PASSWORD extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PASSWORD(String input) {
    return PASSWORD._(
      validatePASSWORD(input, length),
    );
  }

  static const int length = 18;

  const PASSWORD._(this.value);
}
