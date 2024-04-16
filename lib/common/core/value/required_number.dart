import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class RequiredNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory RequiredNumber([int? input]) {
    return RequiredNumber._(
      validateRequiredNumber(input),
    );
  }

  const RequiredNumber._(this.value);
}
