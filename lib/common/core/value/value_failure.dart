import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidDOT({
    required T failedValue,
  }) = _InvalidDOT<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = _InvalidPhoneNumber<T>;

  const factory ValueFailure.fileRequired({
    required T? failedValue,
  }) = _InvalidFileRequired<T>;

  const factory ValueFailure.fieldRequired({
    required T? failedValue,
  }) = _InvalidFieldRequired<T>;

  const factory ValueFailure.invalidPin({
    required T failedValue,
  }) = _InvalidPIN<T>;

  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = _InvalidPassword<T>;


  const factory ValueFailure.invalidNote({
    required T failedValue,
  }) = _InvalidNote<T>;

  const factory ValueFailure.mustBeFutureDate({
    required T failedValue,
  }) = _MustBeFutureDate<T>;

  const factory ValueFailure.invalidDateRequired({
    required T? failedValue,
  }) = _InvalidDateRequired<T>;
}

extension FailureMapper on ValueFailure {
  String failureMessage() => maybeMap(
        invalidDOT: (_) => 'Invalid DOT',
        invalidPhoneNumber: (_) => 'Invalid Phone Number',
        invalidPin: (_) => 'Invalid PIN',
        invalidPassword: (_) => 'Invalid Password',
        invalidNote: (_) => 'Please enter a valid note',
        invalidDateRequired: (_) => 'Date is required',
        mustBeFutureDate: (_) => 'Must be in future',
        fileRequired: (_) => 'File upload is required',
        fieldRequired: (_) => 'This field is required',
        orElse: () => 'Unknown error',
      );
}
