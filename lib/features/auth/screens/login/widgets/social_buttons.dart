import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/constants/image_strings.dart';
import 'package:xstore/utils/constants/sizes.dart';

class XSocialButtons extends StatelessWidget {
  const XSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: XColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              width: XSizes.iconMd,
              height: XSizes.iconMd,
              image: AssetImage(XImages.google),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: XSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: XColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              width: XSizes.iconMd,
              height: XSizes.iconMd,
              image: AssetImage(XImages.facebook),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
