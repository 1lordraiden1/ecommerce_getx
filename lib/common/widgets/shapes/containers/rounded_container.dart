import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/constants/sizes.dart';

class XRoundedContainer extends StatelessWidget {
  const XRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.radius = XSizes.cardRadiusLg,
    this.backgroundColor = XColors.white,
    this.child,
    this.margin,
    this.showBorder = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  final Color borderColor = XColors.borderPrimary;
  final Color backgroundColor;

  final bool showBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
