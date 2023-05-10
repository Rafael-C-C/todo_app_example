import 'package:flutter/material.dart';

class PrimaryTheme {
  //Colores primarios
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      primaryColor: const Color(0xFF176BFC),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red));
}
