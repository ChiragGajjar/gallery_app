part of 'themes.dart';

//TODO: Modify this to your needs
final primaryTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xFF6464AC),
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: lightThemeFont,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xFF686BF0),
  ), colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: const Color(0xFF6464AC),
        secondary: const Color(0xFF686BF0),
      ).copyWith(background: Colors.grey),
);
