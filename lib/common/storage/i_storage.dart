import 'package:dartz/dartz.dart';

abstract class IStorage {

  Future<void> setApiTokenString({required String token});
  Option<String> getApiTokenString();

  Future<void> setPhoneNumber({required String phoneNumber});
  Option<String> getPhoneNumber();

  Future<void> setDOT({required String dot});
  Option<String> getDOT();

  Future<void> setShipmentID({required String shipmentID});
  Option<String> getShipmentID();

  Future<void> setAutoDetectTimezone({required String timezone});
  Option<String> getAutoDetectTimezone();

  Future<void> setSendTrackingUpdates({required String sendTrackingUpdates});
  Option<String> getSendTrackingUpdates();

  Future<void> setAllowPushNotifications({required String allowPushNotifications});
  Option<String> getAllowPushNotifications();

  Future<void> setAutoLogin({required String autoLogin});
  Option<String> getAutoLogin();


  Future<void> setUserID({required String userID});
  Option<String> getUserID();

  Future<void> setDeviceID({required String token});
  Option<String> getDeviceID();

  Future<void> removeAllData();
}
