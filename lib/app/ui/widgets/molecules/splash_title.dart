// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeway_app/app/ui/shared/assets_paths.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/texts.dart';

/// The title with logo displayed in splash screen
class SplashTitle extends StatelessWidget {
  /// Creates a title for splash screen
  const SplashTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AssetsPaths.logos.verticalSvg, width: 180.0),
        const SizedBox(height: 15),
        StyledText.h6(
          'Easy logistic transport for every one',
          textProperties: TextProperites(italic: true),
        ),
        const SizedBox(height: 15),
        Container(
          width: 140,
          height: 2,
          color: FreeWayTheme.officialBlue2,
        ),
      ],
    );
  }
}
