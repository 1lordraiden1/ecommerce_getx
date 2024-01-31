import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';

class SignupCheckbox extends StatelessWidget {
  const SignupCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(child: Checkbox(value: true, onChanged: (value) {})),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: ' I Agree to ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: ' Privacy Policy ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? XColors.white : XColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? XColors.white : XColors.primary,
                    ),
              ),
              TextSpan(
                text: ' and ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' Terms of use ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? XColors.white : XColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? XColors.white : XColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
