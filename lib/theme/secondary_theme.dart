part of 'themes.dart';

// TODO: Modify this to your needs
final secondaryTheme = ThemeData.dark().copyWith(
  primaryColor: const Color(0xFF6464AC),
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: const Color(0xFF6464AC),
        secondary: const Color(0xFF2B2C47),
      ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  textTheme: darkThemeFont,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xFF686BF0),
  ),
);
