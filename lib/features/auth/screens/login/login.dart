import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/common/styles/spacing_style.dart';
import 'package:xstore/utils/constants/image_strings.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/constants/text_strings.dart';
import 'package:xstore/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: XSpacingStyle.paddingWithAppBarWeight,
          child: Column(
            children: [
              Column(
                children: [
                  // logo

                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? XImages.darkAppLogo : XImages.lightAppLogo,
                    ),
                  ),
                  Text(
                    XTexts.homeAppbarTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: XSizes.sm,
                  ),
                  Text(
                    XTexts.homeAppbarTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),

              // Form
              Form(
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
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(XTexts.rememberMe),
                          ],
                        ),

                        // forget password

                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            XTexts.forgetPassword,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.fax),
                        ),
                        const SizedBox(
                          height: XSizes.spaceBtwInputFields / 2,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.no_encryption_gmailerrorred),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
