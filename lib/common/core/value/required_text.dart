import 'package:dartz/dartz.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class RequiredText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RequiredText([String? input]) {
    return RequiredText._(
      validateRequiredText(input),
    );
  }

  const RequiredText._(this.value);
}
