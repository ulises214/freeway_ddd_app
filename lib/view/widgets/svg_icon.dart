// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg/svg.dart';

/// An icon using the svg from the assets
class SvgIcon extends StatelessWidget {
  /// Creates an icon from an asset
  const SvgIcon({
    Key? key,
    required this.svgPath,
    this.size = 16,
    this.color,
  }) : super(key: key);

  /// The path fro thw svg assets
  final String svgPath;

  /// The width and height of the icon
  final double size;

  /// The color the icon will be filled with
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      color: color,
      height: size,
      fit: BoxFit.contain,
    );
  }
}
