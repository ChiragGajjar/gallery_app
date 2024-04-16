import 'dart:ui';

extension StringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension NonNullStringExtensions on String {
  DateTime get formatDateString {
    final year = int.parse(substring(6));
    final month = int.parse(substring(0, 2));
    final day = int.parse(substring(3, 5));

    return DateTime(year, month, day);
  }
}
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension Capitalized on String {
  String capitalized() => substring(0, 1).toUpperCase() + substring(1).toLowerCase();
}
extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}

extension StringAmountConvertExtension on String {
  String toAmount() => replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]},');
}

Color hexStringToColor(String hexColor) {
  var hexColor1 = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor1.length == 6) {
    hexColor1 = "FF$hexColor1";
  }
  return Color(int.parse(hexColor1, radix: 16));
}

String getAverageTimeConverted(double averageTime)  {
  final timeInMinutes = averageTime.round();
  final averageTimeDays = (timeInMinutes / 1440).floor();
  final averageTimeHours = ((timeInMinutes % 1440) / 60).floor();
  final averageTimeMinutes = timeInMinutes % 60;
  return '${averageTimeDays != 0 ? '${averageTimeDays}d' : ''} ${averageTimeHours != 0 ? "${averageTimeHours}h" : ''} ${averageTimeMinutes}m';
}
