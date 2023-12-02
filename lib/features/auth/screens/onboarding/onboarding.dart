import 'package:flutter/material.dart';
import 'package:xstore/features/auth/screens/onboarding/widgets/onboardingnav.dart';
import 'package:xstore/features/auth/screens/onboarding/widgets/onboardingpage.dart';

import 'package:xstore/utils/constants/image_strings.dart';


import 'package:xstore/utils/constants/text_strings.dart';

import 'widgets/onboardingskip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              onBoardingPage(
                  image: XImages.onBoardingImage1,
                  title: XTexts.onBoardingTitle1,
                  subTitle: XTexts.onBoardingSubTitle1),
              onBoardingPage(
                  image: XImages.onBoardingImage2,
                  title: XTexts.onBoardingTitle2,
                  subTitle: XTexts.onBoardingSubTitle2),
              onBoardingPage(
                  image: XImages.onBoardingImage3,
                  title: XTexts.onBoardingTitle3,
                  subTitle: XTexts.onBoardingSubTitle3),
            ],
          ),
          const onBoardingSkip(),
          const onBoardingNavigation(),

        ],
      ),
    );
  }
}

