part of 'themes.dart';

const _font = 'Inter';
//TODO: Add custom fonts here
final lightThemeFont = ThemeData.light().textTheme.apply(
      bodyColor: const Color(0xFF575757),
      fontFamily: _font,
    );

final darkThemeFont = ThemeData.dark().textTheme.apply(
      fontFamily: _font,
    );
