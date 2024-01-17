import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/common/widgets/success.dart';
import 'package:xstore/features/auth/screens/login/login.dart';
import 'package:xstore/utils/constants/image_strings.dart';
import 'package:xstore/utils/constants/sizes.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // to delete the arrow back
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(XSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(XImages.onBoardingImage3)),
              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              // String

              Text(
                "Verfiy your Email",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: XSizes.spaceBtwItems,
              ),
              Text(
                "abc123@def.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                "Check your Email",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              // Button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      title: "Created Account Successfully",
                      image: XImages.success,
                      subtitle: "You can login from the button below",
                      onPressed: () => Get.to(
                        () => const LoginScreen(),
                      ),
                    ),
                  ),
                  child: const Text("Confirm"),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text("Resend Email !"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
