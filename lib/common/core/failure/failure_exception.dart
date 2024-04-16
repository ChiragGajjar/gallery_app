import 'failure.dart';

class FailureException implements Exception {
  final Failure failure;

  FailureException(this.failure);

  @override
  String toString() {
    return 'Exception: ${failure.failureMessage()}';
  }
}
