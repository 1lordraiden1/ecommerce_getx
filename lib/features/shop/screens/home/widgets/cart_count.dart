import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/utils/constants/colors.dart';

class XCartCountWidget extends StatelessWidget {
  const XCartCountWidget({
    super.key,
    this.iconColor = XColors.white,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: XColors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "5",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: XColors.white,
                      fontSizeFactor: 0.7,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
