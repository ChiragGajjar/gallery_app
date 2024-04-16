// ignore_for_file: constant_identifier_names, use_setters_to_change_properties, avoid_classes_with_only_static_members
enum AppEnvironment { DEV, PROD, STAGING }

extension AppEnvironmentExtension on AppEnvironment {
  String get name => toString().split('.')[1].toLowerCase();
}

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;

  static void initialize(AppEnvironment environment) {
    EnvInfo._environment = environment;
  }

  static String get appName => _environment._appTitle;
  static String get envName => _environment._envName;
  static String get apiBaseUrl => _environment._apiBaseUrl;
  static AppEnvironment get environment => _environment;
}

extension _EnvProperties on AppEnvironment {
  static const _appTitles = {
    AppEnvironment.DEV: 'Gallery App',
    AppEnvironment.PROD: 'Gallery App',
    AppEnvironment.STAGING: 'Gallery App',
  };

  static const _envs = {
    AppEnvironment.DEV: 'dev',
    AppEnvironment.PROD: 'prod',
    AppEnvironment.STAGING: 'staging',
  };


  //TODO: replace placeholders with real URLs
  static const _apiBaseUrls = {
    AppEnvironment.DEV: 'https://pixabay.com/api/',
    AppEnvironment.PROD: 'https://pixabay.com/api/',
    AppEnvironment.STAGING: 'https://pixabay.com/api/',
  };


  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _apiBaseUrl => _apiBaseUrls[this]!;
}
