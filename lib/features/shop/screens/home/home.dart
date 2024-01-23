import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:xstore/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:xstore/common/widgets/shapes/containers/search_container.dart';
import 'package:xstore/common/widgets/texts/text_heading.dart';
import 'package:xstore/utils/constants/sizes.dart';

import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            XPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const XHomeAppBarWidget(),
                  const SizedBox(
                    height: XSizes.spaceBtwSections,
                  ),

                  // Search Bar

                  const XSearchContainer(
                    text: "Search here",
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(
                    height: XSizes.spaceBtwSections,
                  ),

                  // Categories

                  Padding(
                    padding: const EdgeInsets.only(left: XSizes.defaultSpace),
                    child: Column(
                      children: [
                        const XSectionHeading(
                          title: "Categories",
                          showActionButton: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
