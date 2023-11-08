import 'package:flutter/material.dart';
import 'package:xstore/utils/theme/custom/appbar_theme.dart';
import 'package:xstore/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:xstore/utils/theme/custom/checkbox_theme.dart';
import 'package:xstore/utils/theme/custom/chip_theme.dart';
import 'package:xstore/utils/theme/custom/elevated_button_theme.dart';
import 'package:xstore/utils/theme/custom/outlined_button_theme.dart';
import 'package:xstore/utils/theme/custom/text_field_theme.dart';
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
    elevatedButtonTheme: XElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: XAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: XBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: XCheckboxTheme.lightCheckboxTheme,
    chipTheme: XChipTheme.lightChipTheme,
    outlinedButtonTheme: XOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: XTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
    textTheme: XTextTheme.darkTextTheme,
    elevatedButtonTheme: XElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: XAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: XBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: XCheckboxTheme.darkCheckboxTheme,
    chipTheme: XChipTheme.darkChipTheme,
    outlinedButtonTheme: XOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: XTextFieldTheme.darkInputDecorationTheme,
  );
}
