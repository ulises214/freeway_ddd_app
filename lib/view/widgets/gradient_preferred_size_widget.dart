// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../theme.dart';

/// Widget with gradient background that implements
/// [PreferredSizeWidget] like an [AppBar]
class GradientPreferredSizeWidget extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a widget with gradient background
  ///
  /// Ideal to implement an appbar and the bottom of an appbar
  const GradientPreferredSizeWidget({Key? key, required this.child, this.elevation})
      : super(key: key);

  /// The widget below this widget in the tree.
  final Widget child;

  /// The elevation for the material effect
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 0.0,
      color: Colors.transparent,
      child: Container(
        height: preferredSize.height,
        width: preferredSize.width,
        decoration: const BoxDecoration(
          gradient: FreeWayTheme.horizontalGradient,
        ),
        child: child,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
