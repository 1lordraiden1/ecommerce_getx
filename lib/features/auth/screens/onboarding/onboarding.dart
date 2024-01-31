import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/features/auth/controllers/onboarding_controller.dart';
import 'package:xstore/features/auth/screens/onboarding/widgets/onboardingcirbtn.dart';
//import 'package:iconsax/iconsax.dart';
import 'package:xstore/features/auth/screens/onboarding/widgets/onboardingnav.dart';
import 'package:xstore/features/auth/screens/onboarding/widgets/onboardingpage.dart';

import 'package:xstore/utils/constants/image_strings.dart';

import 'package:xstore/utils/constants/text_strings.dart';

import 'widgets/onboardingskip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: XImages.onBoardingImage1,
                  title: XTexts.onBoardingTitle1,
                  subTitle: XTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: XImages.onBoardingImage2,
                  title: XTexts.onBoardingTitle2,
                  subTitle: XTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: XImages.onBoardingImage3,
                  title: XTexts.onBoardingTitle3,
                  subTitle: XTexts.onBoardingSubTitle3),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingCirBtn()
        ],
      ),
    );
  }
}
