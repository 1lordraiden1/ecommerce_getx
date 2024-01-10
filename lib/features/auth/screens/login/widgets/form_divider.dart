import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';

class XFormDivider extends StatelessWidget {
  const XFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? XColors.darkGrey : XColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        )
      ],
    );
  }
}