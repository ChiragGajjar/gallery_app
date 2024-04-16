import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class RequiredDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory RequiredDate([DateTime? input]) {
    return RequiredDate._(
      validateRequiredDate(input),
    );
  }

  const RequiredDate._(this.value);
}
