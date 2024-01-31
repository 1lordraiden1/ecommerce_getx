import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/colors.dart';

class XSectionHeading extends StatelessWidget {
  const XSectionHeading({
    super.key,
    this.textColor = XColors.white,
    required this.showActionButton,
    required this.title,
    this.buttonTitle = "View all",
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
