import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

@module
abstract class RegisterModule {
  @preResolve
  @Singleton()
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @preResolve
  @Singleton()
  Future<SharedPreferences> get sharedPrefs => SharedPreferences.getInstance();

}
