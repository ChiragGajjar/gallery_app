import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class NotAvailableNote extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotAvailableNote(String input) {
    return NotAvailableNote._(
      validateNote(input),
    );
  }

  const NotAvailableNote._(this.value);
}
