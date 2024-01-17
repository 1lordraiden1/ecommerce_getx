import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  prefix: Icon(Iconsax.direct_right),
                  labelText: XTexts.email,
                ),
              ),
            ),
            const SizedBox(
              width: XSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  prefix: Icon(Iconsax.direct_right),
                  labelText: XTexts.email,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: XSizes.spaceBtwInputFields,
        ),

        // Rest of Form

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
            prefix: Icon(Iconsax.direct_right),
            labelText: XTexts.email,
          ),
        ),

        const SizedBox(
          height: XSizes.spaceBtwInputFields,
        ),

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
            prefix: Icon(Iconsax.direct_right),
            labelText: XTexts.email,
          ),
        ),
      ],
    ));
  }
}
