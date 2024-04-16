import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class NotAvailableDateTime extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory NotAvailableDateTime(DateTime input) {
    return NotAvailableDateTime._(
      validateNotAvailableDateTime(input),
    );
  }

  const NotAvailableDateTime._(this.value);
}
