import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xstore/features/auth/screens/onboarding/onboarding.dart';
import 'package:xstore/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: XAppTheme.lightTheme,
      darkTheme: XAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
