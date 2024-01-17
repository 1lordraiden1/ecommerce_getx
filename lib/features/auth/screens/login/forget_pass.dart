import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/common/widgets/success.dart';
import 'package:xstore/features/auth/screens/login/login.dart';
import 'package:xstore/utils/constants/image_strings.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/constants/text_strings.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // String

              Text(
                "Verfiy your Email",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: XSizes.spaceBtwItems,
              ),

              Text(
                "Check your Email",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              // TFF

              TextFormField(
                decoration: const InputDecoration(
                  prefix: Icon(Iconsax.direct_right),
                  labelText: XTexts.email,
                ),
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
                      title: "Check your email",
                      image: XImages.success,
                      subtitle: "click continue below to back login",
                      onPressed: () => Get.to(
                        () => const LoginScreen(),
                      ),
                    ),
                  ),
                  child: const Text("Confirm"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
