import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets_paths.dart';
import '../../../theme.dart';
import '../../../widgets/widgets.dart';

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
          type: StyledTextType.h6,
          italic: true,
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
