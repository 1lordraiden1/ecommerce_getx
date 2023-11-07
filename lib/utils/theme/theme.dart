import 'package:flutter/material.dart';
import 'package:xstore/utils/theme/custom/text_theme.dart';

class XAppTheme {
  XAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: XTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Color.fromARGB(255, 32, 32, 32),
    textTheme: XTextTheme.darkTextTheme,
  );
}
