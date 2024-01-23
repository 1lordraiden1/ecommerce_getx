import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/features/auth/screens/login/forget_pass.dart';
import 'package:xstore/features/auth/screens/signup/signup.dart';
import 'package:xstore/navigation_menu.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/constants/text_strings.dart';

class XLoginForm extends StatelessWidget {
  const XLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: XSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: XTexts.email,
              ),
            ),
            const SizedBox(
              height: XSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Iconsax.password_check),
                labelText: XTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: XSizes.spaceBtwInputFields / 2,
            ),

            // remember me

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(XTexts.rememberMe),
                  ],
                ),

                // forget password

                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassScreen()),
                  child: const Text(
                    XTexts.forgetPassword,
                  ),
                )
              ],
            ),

            const SizedBox(
              height: XSizes.spaceBtwSections,
            ),

            //sign in

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(const NavigationMenu()),
                child: const Text("Sign in"),
              ),
            ),

            const SizedBox(
              height: XSizes.spaceBtwItems,
            ),

            //create account

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
