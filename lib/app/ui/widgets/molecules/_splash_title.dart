// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/ui/shared/shared.dart';
import 'package:freeway_app/app/ui/widgets/atoms/atoms.dart';

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
        const StyledText(
          'Easy logistic transport for every one',
          textProperties: TextProperties(italic: true, type: TextType.h6),
        ),
        const SizedBox(height: 15),
        Container(
          width: 140,
          height: 2,
          color: FreeWayColors.officialBlue2,
        ),
      ],
    );
  }
}
