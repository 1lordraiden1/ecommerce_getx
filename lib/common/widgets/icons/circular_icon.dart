import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/helpers/helper_functions.dart';

class XCircularIcon extends StatelessWidget {
  const XCircularIcon({
    super.key,
    required this.icon,
    this.onPressed,
    this.borderRadius = 100,
    this.width,
    this.height,
    this.size,
    this.color,
    this.backgroundColor,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final double? borderRadius, width, height, size;
  final Color? color, backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? XColors.black.withOpacity(0.9)
                : XColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
