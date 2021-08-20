// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../assets_paths.dart';
import '../../../theme.dart';

/// A widget that represents a highlighted travel
class HightLightedTravelCard extends StatelessWidget {
  /// Creathe the card widget for hightlighted card
  HightLightedTravelCard({
    Key? key,
  }) : super(key: key);
  // ignore: todo
  // ! TODO pass object
  final String _image = AssetsPaths.images.defaultProfile;
  final String _title = 'Ejemplo de titulo';
  final String _origin = 'Manzanillo';
  final int _ranking = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 340.0),
      child: StyledCard(
        onPressed: () {},
        hasDivider: true,
        title: const StyledText(
          'Destacados',
          type: StyledTextType.h6,
          textColor: FreeWayTheme.extraBlue1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              _CardImage(
                imagePath: _image,
              ),
              const SizedBox(width: 15.0),
              _CardDescription(
                title: _title,
                origin: _origin,
                ranking: _ranking,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardDescription extends StatelessWidget {
  const _CardDescription({
    Key? key,
    required this.title,
    required this.ranking,
    required this.origin,
  }) : super(key: key);
  final String title;
  final int ranking;
  final String origin;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        StyledText(
          title,
          type: StyledTextType.body2,
          textColor: FreeWayTheme.extraBlue1,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SvgIcon(
              svgPath: AssetsPaths.icons.origin,
              color: FreeWayTheme.success,
              size: 24.0,
            ),
            const SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const StyledText('Lugar de origen:',
                  type: StyledTextType.body3, textColor: FreeWayTheme.gray3),
              StyledText(origin,
                  type: StyledTextType.body3, bold: true, textColor: FreeWayTheme.gray3)
            ]),
          ],
        ),
        const SizedBox(height: 10),
        StarsIndicator(
          ranking: ranking,
        ),
      ],
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      // ignore: todo
      //! TODO use image network
      child: Image.asset(
        imagePath,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
