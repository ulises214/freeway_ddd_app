// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// Creates an unified icon size used for modals
class ModalIcon extends StatelessWidget {
  /// Creates an unified icon size used for modals
  const ModalIcon(this._icon, {Key? key, this.color}) : super(key: key);

  final IconData _icon;

  /// The color for the icon
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Icon(_icon, color: color, size: 80);
  }
}
