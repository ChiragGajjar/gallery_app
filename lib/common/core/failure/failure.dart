import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError({String? error}) = _ServerError;
  const factory Failure.offline() = _Offline;
  const factory Failure.invalidEmail() = _InvalidEmail;
  const factory Failure.successEmailSent({required String message}) = _SuccessEmailSent;
  const factory Failure.noTrackingRequest({required String message}) = _NoTrackingRequest;
  const factory Failure.signInIncorrectDOT() = _IncorrectDOT;
  const factory Failure.signInIncorrectPin() = _IncorrectPin;
  const factory Failure.signInNeedPin() = _NeedPin;
  const factory Failure.signInDriverTerminated({required String companyName, required String companyTelephone}) = _DriverTerminated;
  const factory Failure.signInIncorrectMobile() = _IncorrectMobile;
  const factory Failure.firstLoginCompleted() = _FirstLoginCompleted;
  const factory Failure.unauthorized() = _UnauthorizedAccess;
  const factory Failure.biometricAuthNotActivated() = _BiometricNotActivated;
  const factory Failure.passcodeNotSet() = _PasscodeNotSet;
  const factory Failure.notEnrolled() = _NotEnrolled;
  const factory Failure.notAvailable() = _NotAvailable;
  const factory Failure.otherOperatingSystem() = _OtherOperatingSystem;
  const factory Failure.lockedOut() = _LockedOut;
  const factory Failure.rideDoesNotExist() = _RideDoesNotExist;
  const factory Failure.dailyBreaksUsedUp() = _DailyBreaksUsedUp;
  const factory Failure.locationPermissionDisabled() =_LocationPermissionDisabled;
  const factory Failure.noSignInData() = _NoSignInData;
  const factory Failure.permanentlyLockedOut() = _PermanentlyLockedOut;
  const factory Failure.wrongAuthenticationCode() = _WrongAuthenticationCode;

}

extension FailureMapper on Failure {
  String failureMessage() => map(
        serverError: (s) => s.error ?? 'Connecting to Gallery App',
        offline: (s) => 'Offline',
        unauthorized: (s) => 'Unauthorized',
        invalidEmail: (s) => 'Incorrect email!',
        successEmailSent: (s) => s.message,
        firstLoginCompleted: (s) => 'First Login already completed!',
        noTrackingRequest: (s) => s.message,
        dailyBreaksUsedUp: (s) => 'You have already used all of your daily breaks!',
        signInIncorrectDOT: (s) => 'Incorrect DOT',
        signInIncorrectMobile: (s) => 'Incorrect Phone number',
        signInIncorrectPin: (s) => 'Incorrect PIN',
        biometricAuthNotActivated: (s) => 'Biometric Authentication is not activated on this Device',
        signInNeedPin: (s) => 'Please enter your PIN!',
        rideDoesNotExist: (s) => 'Ride does not exist!',
        lockedOut: (s) => 'Locked out',
        notAvailable: (s) => 'Biometric Authentication not available',
        notEnrolled: (s) => 'The user has not enrolled any fingerprints on the device',
        otherOperatingSystem: (s) => 'Other Operating System',
        passcodeNotSet: (s) => 'No Passcode is set',
        noSignInData: (s) => 'No Sign in data. Please Sign in first',
        locationPermissionDisabled: (s) => 'Please enable Location tracking first.',
        permanentlyLockedOut: (s) => 'Permanently Locked Out',
        signInDriverTerminated: (s) => 'You are no longer an active Driver with ${s.companyName}. Please contact ${s.companyTelephone}',
    wrongAuthenticationCode: (s) => 'Wrong Authentication Code',

  );
}
