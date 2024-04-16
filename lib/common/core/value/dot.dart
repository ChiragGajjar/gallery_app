import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class DOT extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DOT(String input) {
    return DOT._(
      validateDOT(input, maxLength),
    );
  }

  static const int maxLength = 12;

  const DOT._(this.value);
}
