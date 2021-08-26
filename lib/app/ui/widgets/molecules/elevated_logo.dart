// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeway_app/app/ui/shared/assets_paths.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// The app logo with shadow
class ElevatedLogo extends StatelessWidget {
  /// Creates a square with the app logo
  const ElevatedLogo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: FreeWayTheme.borderRadius,
      color: FreeWayTheme.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SvgPicture.asset(AssetsPaths.logos.verticalSvg, height: 100),
      ),
    );
  }
}
