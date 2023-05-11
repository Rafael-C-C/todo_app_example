import 'package:flutter/material.dart';

class PrimaryTheme {
  //Colores primarios
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //
      useMaterial3: true,
      primaryColor: const Color(0xFF176BFC),
      cardColor: Colors.white,
      colorScheme: const ColorScheme(
          brightness: Brightness.light, //Brillo del t tema

          primary: Color(0xFF176BFC), // Color principal
          onPrimary: Colors.white, // Color del texto que se muestra en el tema
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.redAccent,
          onError: Colors.yellow,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black),

      //Tema de las cards
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 10,
        surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.red)),
      ),
      //Texttbutton
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 0, 0, 0)),
        overlayColor: MaterialStateProperty.all<Color>(const Color(0xFFFFBB01)),
      )),

      //Elevated Button

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        )),
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 233, 20, 241).withOpacity(.8)),
        foregroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
        overlayColor: MaterialStateProperty.all<Color>(const Color(0xFFDA7000)),
      )),

      //Theme of outlinedbuttom
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        backgroundColor: Colors.orange.shade700,
        maximumSize: const Size(90, 75),
        surfaceTintColor: const Color(0xFFDA7000),
        fixedSize: const Size(double.infinity, 0.75),
        padding: const EdgeInsets.all(0),
        side: const BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: const Size(60, 30),
      )));
}
