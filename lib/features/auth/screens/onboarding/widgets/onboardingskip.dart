import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/sizes.dart';

import '../../../../../utils/device/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: XDeviceUtils.getAppBarHeight(),right: XSizes.defaultSpace,child: TextButton(onPressed: (){},child: const Text("Skip"),));
  }
}