import 'package:flutter/material.dart';
import 'package:xstore/utils/constants/sizes.dart';
import 'package:xstore/utils/device/device_utility.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  const XAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: XSizes.md),
      child: AppBar(
        
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(XDeviceUtils.getAppBarHeight());
}
