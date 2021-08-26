import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// An predefined style icon for the inputs
class InputIcon extends StatelessWidget {
  /// Creates an icon with predefined styles for inputs
  const InputIcon(this.icon, {Key? key, this.color = FreeWayTheme.gray3}) : super(key: key);

  /// The icon displayed in the widget
  final IconData icon;

  /// The color for the icon
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: 16.0);
  }
}
