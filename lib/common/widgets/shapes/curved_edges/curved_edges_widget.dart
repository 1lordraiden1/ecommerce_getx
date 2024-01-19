import 'package:flutter/material.dart';
import 'package:xstore/common/widgets/shapes/curved_edges/curved_edges.dart';

class XClipPathWidget extends StatelessWidget {
  const XClipPathWidget({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: XCurvedEdges(), child: child);
  }
}
