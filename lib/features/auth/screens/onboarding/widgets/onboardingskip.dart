import 'package:flutter/material.dart';
import 'package:xstore/features/auth/controllers/onboarding_controller.dart';
import 'package:xstore/utils/constants/sizes.dart';

import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: XDeviceUtils.getAppBarHeight(),
      right: XSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
