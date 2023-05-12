import 'package:flutter/material.dart';

class SecondaryTheme {
  static final ThemeData lightThemeC = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: const Color.fromARGB(255, 0, 0, 0),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromARGB(255, 0, 0, 0),
      onPrimary: Colors.white,
      secondary: Color.fromARGB(255, 5, 64, 226),
      onSecondary: Color.fromARGB(255, 5, 64, 226),
      error: Color.fromARGB(255, 237, 5, 5),
      onError: Color.fromARGB(255, 251, 251, 251),
      background: Color.fromARGB(255, 5, 64, 226),
      onBackground: Color.fromARGB(255, 5, 64, 226),
      surface: Color.fromARGB(255, 5, 64, 226),
      onSurface: Color.fromARGB(255, 17, 17, 17),
    ),

    // //Tema de las cards
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 8,
      surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(
          color: Color.fromARGB(255, 2, 2, 2),
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 0, 0, 0).withOpacity(.8),
        ),
        foregroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
        overlayColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 238, 27, 27),
        ),
      ),
    ),
  );
}
