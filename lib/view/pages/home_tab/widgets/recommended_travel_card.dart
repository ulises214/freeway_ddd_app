// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../../model/travel/models.dart';
import '../../../assets_paths.dart';
import '../../../theme.dart';

/// A Card widget that represent a recommentded travel
class RecommendedTravelCard extends StatelessWidget {
  /// Create the card to represent a travel
  const RecommendedTravelCard({Key? key, required this.travel}) : super(key: key);

  /// The travel that this widget display
  final RecomendedTravel travel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 340.0),
      child: StyledCard(
        tinyTitle: true,
        title: const _CartTop(),
        body: Column(children: [
          _CardImage(
            urlImage: travel.uriProfileImage,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: _CardDescription(travel: travel),
          ),
        ]),
      ),
    );
  }
}

class _CartTop extends StatelessWidget {
  const _CartTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgIcon(
              svgPath: AssetsPaths.icons.premium,
              color: FreeWayTheme.warning,
              size: 24.0,
            ),
            const SizedBox(width: 5),
            const StyledText('Premium',
                type: StyledTextType.body2, textColor: FreeWayTheme.warning),
          ],
        ),
        TextLink(
          text: 'Unirte a Premium',
          onPressed: () {},
          textColor: FreeWayTheme.extraBlue1,
        ),
      ],
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 11 / 7,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _CardDescription extends StatelessWidget {
  const _CardDescription({Key? key, required this.travel}) : super(key: key);

  final RecomendedTravel travel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              StyledText(
                travel.title,
                type: StyledTextType.h6,
                textColor: FreeWayTheme.extraBlue1,
              ),
              const SizedBox(height: 5),
              Wrap(direction: Axis.horizontal, children: [
                const StyledText('Lugar de origen: ',
                    type: StyledTextType.body3, textColor: FreeWayTheme.gray3),
                StyledText(travel.origin,
                    type: StyledTextType.body3, bold: true, textColor: FreeWayTheme.gray3)
              ]),
              const SizedBox(height: 5),
              StarsIndicator(
                ranking: travel.rating,
              )
            ],
          ),
        ),
        RoundedButton.gradient(
          'Ver más',
          onPressed: () {},
          size: RoundedButtonSize.tiny,
        )
      ],
    );
  }
}
