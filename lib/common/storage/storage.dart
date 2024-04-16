import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../providers/ioc.dart';
import '../../providers/providers.dart';
import '../extensions/string_extensions.dart';
import 'i_storage.dart';

final storageProvider = Provider<IStorage>(
  (ref) {
    final storage = getIt<SharedPreferences>();
    return Storage(
      storage,
    );
  },
);

@Injectable()
class Storage implements IStorage {
  final SharedPreferences _sharedPreferences;

  Storage(this._sharedPreferences);


  @override
  Future<void> setDeviceID({required String token}) async {
    _sharedPreferences.setString(_firebaseDeviceIDKey, token);
  }
  @override
  Option<String> getDeviceID() => _getPreferenceString(_firebaseDeviceIDKey);


  Option<String> _getPreferenceString(String key) {
    final data = _sharedPreferences.getString(key);

    if (data.isNullOrEmpty) {
      return none();
    }
    return some(data!);
  }

  @override
  Future<void> removeAllData() async {
    await _sharedPreferences.remove(_shipmentID);
    await _sharedPreferences.remove(_apiTokenNewKey);
    await _sharedPreferences.remove(_chatTokenKey);
    await _sharedPreferences.remove(_phoneNumberKey);
    await _sharedPreferences.remove(_dot);
    await _sharedPreferences.remove(_timezone);
    await _sharedPreferences.remove(_sendTrackingUpdates);
    await _sharedPreferences.remove(_allowPushNotifications);
  }




  @override
  Future<void> setPhoneNumber({required String phoneNumber}) => _sharedPreferences.setString(_phoneNumberKey, phoneNumber);
  @override
  Option<String> getPhoneNumber() => _getPreferenceString(_phoneNumberKey);


  @override
  Future<void> setDOT({required String dot}) => _sharedPreferences.setString(_dot, dot);
  @override
  Option<String> getDOT() => _getPreferenceString(_dot);

  @override
  Future<void> setUserID({required String userID}) => _sharedPreferences.setString(_setUserID, userID);
  @override
  Option<String> getUserID() => _getPreferenceString(_setUserID);


  @override
  Future<void> setApiTokenString({required String token}) async {
    _sharedPreferences.setString(_apiTokenNewKey, token);
  }
  @override
  Option<String> getApiTokenString() => _getPreferenceString(_apiTokenNewKey);


  @override
  Future<void> setShipmentID({required String shipmentID}) => _sharedPreferences.setString(_shipmentID, shipmentID);

  @override
  Option<String> getShipmentID() {
    final value = _sharedPreferences.getString(_shipmentID);
    if (value == null) {
      return none();
    }
    return some(value);
  }

  @override
  Future<void> setAutoDetectTimezone({required String timezone}) => _sharedPreferences.setString(_timezone, timezone);
  @override
  Option<String> getAutoDetectTimezone() => _getPreferenceString(_timezone);

  @override
  Future<void> setSendTrackingUpdates({required String sendTrackingUpdates}) => _sharedPreferences.setString(_sendTrackingUpdates, sendTrackingUpdates);
  @override
  Option<String> getSendTrackingUpdates() => _getPreferenceString(_sendTrackingUpdates);

  @override
  Future<void> setAllowPushNotifications({required String allowPushNotifications}) => _sharedPreferences.setString(_allowPushNotifications, allowPushNotifications);
  @override
  Option<String> getAllowPushNotifications() => _getPreferenceString(_allowPushNotifications);


  @override
  Future<void> setAutoLogin({required String autoLogin}) => _sharedPreferences.setString(_autoLogin, autoLogin);
  @override
  Option<String> getAutoLogin() => _getPreferenceString(_autoLogin);

}

const _chatTokenKey = 'CHAT_TOKEN';
const _apiTokenNewKey = 'API_TOKEN_NEW';
const _phoneNumberKey = 'PHONE_NUMBER';
const _firebaseDeviceIDKey = 'FIREBASE_DEVICE_ID';
const userHiveKey = 'user';
const staffUserHiveKey = 'staff_user';
const _shipmentID = 'SHIPMENTID';
const _dot = 'DOT';
const _setUserID = 'USERID';
const _timezone = 'timezone';
const _sendTrackingUpdates = 'sendTrackingUpdates';
const _allowPushNotifications = 'allowPushNotifications';
const _autoLogin = 'autoLogin';
