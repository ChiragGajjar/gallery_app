import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import '../../extensions/string_extensions.dart';

import 'value_failure.dart';

Either<ValueFailure<String>, String> validateNote(String input) {
  if (!input.isNullOrEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidNote(failedValue: input),
    );
  }
}

Either<ValueFailure<DateTime>, DateTime> validateNotAvailableDateTime(
  DateTime input,
) {
  if (input.isAfter(DateTime.now())) {
    return right(input);
  } else {
    return left(
      ValueFailure.mustBeFutureDate(failedValue: input),
    );
  }
}

Either<ValueFailure<XFile>, XFile> validateRequiredFile(XFile? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(
      ValueFailure.fileRequired(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateRequiredText(String? input) {
  if (input != null && input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.fieldRequired(failedValue: input),
    );
  }
}

Either<ValueFailure<int>, int> validateRequiredNumber(int? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(
      ValueFailure.fieldRequired(failedValue: input),
    );
  }
}

Either<ValueFailure<DateTime>, DateTime> validateRequiredDate(DateTime? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidDateRequired(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateDOT(String input, int maxLength) {
  if (input.isNotEmpty && input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidDOT(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validatePIN(String input, int length) {
  if (input.length == length) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPin(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validatePASSWORD(String input, int length) {
  final regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  final isTrue = regex.hasMatch(input);

  if (input.length <= length && input.isNotEmpty && isTrue) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPassword(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (input.startsWith('+385')) {
    if (input.length == 13) {
      return right(input);
    }
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  } else if (input.length == 12) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  }
}
