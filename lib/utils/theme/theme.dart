import 'package:flutter/material.dart';

class XAppTheme {
  XAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 14,
            color: Colors.green,
          )
        )
      );
  static ThemeData darkTheme = ThemeData();
}
