// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../common/storage/storage.dart' as _i5;
import 'ioc.dart' as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.singletonAsync<_i3.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.SharedPreferences>(
    () => registerModule.sharedPrefs,
    preResolve: true,
  );
  gh.factory<_i5.Storage>(() => _i5.Storage(gh<_i4.SharedPreferences>()));
  return getIt;
}

class _$RegisterModule extends _i6.RegisterModule {}
