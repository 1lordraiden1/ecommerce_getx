import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/features/auth/screens/signup/verify_email.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/helpers/helper_functions.dart';
import 'package:xstore/utils/theme/custom/form_divider.dart';
import 'package:xstore/utils/theme/custom/social_buttons.dart';
import 'widgets/signup_checkbox.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(XSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // header
              Text(
                "Create Account...",
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),
              // First Last Names

              // Form

              const SignupForm(),

              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              // check box

              SignupCheckbox(dark: dark),
              const SizedBox(
                height: XSizes.spaceBtwItems,
              ),

              // create buttton

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmail()),
                  child: const Text("Create Account"),
                ),
              ),
              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              //divider

              XFormDivider(dark: dark),

              const SizedBox(
                height: XSizes.spaceBtwSections,
              ),

              //google and facebook

              const XSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
