import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class PIN extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PIN(String input) {
    return PIN._(
      validatePIN(input, length),
    );
  }

  static const int length = 4;

  const PIN._(this.value);
}
