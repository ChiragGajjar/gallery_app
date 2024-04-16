import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class OTP extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OTP(String input) {
    return OTP._(
      validatePIN(input, length),
    );
  }

  static const int length = 5;

  const OTP._(this.value);
}
