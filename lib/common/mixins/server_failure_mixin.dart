import '../core/failure/failure.dart';
import '../core/failure/failure_exception.dart';

mixin ServerFailureMixin {
  void checkForFailures({required bool success, required String? message}) {
    if (!success) {
      switch (message) {
        case 'Incorrect mobile number!':
          throw FailureException(const Failure.signInIncorrectMobile());
        case 'Customer does not exist, incorrect DOT!':
          throw FailureException(const Failure.signInIncorrectDOT());
        case 'First login completed!':
        case 'First time login completed.':
          throw FailureException(const Failure.firstLoginCompleted());
        default:
          throw FailureException(const Failure.serverError());
      }
    }
  }
}
