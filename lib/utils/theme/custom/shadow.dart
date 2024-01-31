import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';

class XShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: XColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: XColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
