extension UserStatusExtensions on Enum {
  String get value => toString().split('.')[1];
}
