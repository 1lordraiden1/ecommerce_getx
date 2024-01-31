import 'package:flutter/material.dart';
import 'package:xstore/common/widgets/image_text/vertical_image_text.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/constants/image_strings.dart';
import 'package:xstore/utils/constants/sizes.dart';

class XHomeCategories extends StatelessWidget {
  const XHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        separatorBuilder: (_, index) {
          return const SizedBox(
            width: XSizes.spaceBtwItems,
          );
        },
        itemBuilder: (_, index) {
          return const XVerticalImageText(
            image: XImages.darkAppLogo,
            textColor: XColors.white,
            title: "Clothes",
          );
        },
      ),
    );
  }
}
