import 'package:flutter/material.dart';
import 'package:xstore/common/widgets/shapes/containers/circular_container.dart';
import 'package:xstore/common/widgets/shapes/curved_edges/curved_edges_widget.dart';
import 'package:xstore/utils/constants/colors.dart';

class XPrimaryHeaderContainer extends StatelessWidget {
  const XPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return XClipPathWidget(
      child: Container(
        decoration: const BoxDecoration(
          color: XColors.primary,
        ),
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: XCircularBackground(
                  backgroundColor: XColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: 200,
                child: XCircularBackground(
                  backgroundColor: XColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
