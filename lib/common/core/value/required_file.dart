import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import 'value_failure.dart';
import 'value_object.dart';
import 'value_validators.dart';

class RequiredFile extends ValueObject<XFile> {
  @override
  final Either<ValueFailure<XFile>, XFile> value;

  factory RequiredFile([XFile? input]) {
    return RequiredFile._(
      validateRequiredFile(input),
    );
  }

  const RequiredFile._(this.value);
}
