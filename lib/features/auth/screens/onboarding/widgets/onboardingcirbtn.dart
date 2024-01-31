import 'package:flutter/material.dart';
import 'package:xstore/features/auth/controllers/onboarding_controller.dart';
import 'package:xstore/utils/constants/colors.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/device/device_utility.dart';
import 'package:xstore/utils/helpers/helper_functions.dart';

class OnBoardingCirBtn extends StatelessWidget {
  const OnBoardingCirBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Positioned(
      right: XSizes.defaultSpace,
      bottom: XDeviceUtils.getNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? XColors.primary : XColors.black,
        ),
        child:
            const Icon(Icons.arrow_right_alt_outlined), //Iconsax.arrow_right_3
        onPressed: () => OnBoardingController.instance.nextPage(),
      ),
    );
  }
}
