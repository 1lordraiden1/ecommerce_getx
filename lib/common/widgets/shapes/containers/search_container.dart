import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/device/device_utility.dart';
import 'package:xstore/utils/helpers/helper_functions.dart';

class XSearchContainer extends StatelessWidget {
  const XSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBorder = true,
    this.showBackground = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: XSizes.defaultSpace),
        child: Container(
          height: 40,
          width: XDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.symmetric(
            horizontal: XSizes.md,
          ),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? XColors.dark
                    : XColors.light
                : Colors.transparent,
            border: showBorder
                ? Border.all(
                    color: XColors.grey,
                  )
                : null,
            borderRadius: BorderRadius.circular(XSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: XColors.darkGrey,
              ),
              const SizedBox(
                width: XSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: XColors.darkGrey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
