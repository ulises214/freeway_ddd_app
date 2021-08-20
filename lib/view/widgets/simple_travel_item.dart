// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../model/travel/models.dart';
import '../theme.dart';
import 'stars_indicator.dart';
import 'texts.dart';

/// A widget to display the infor for a [SimpleTravel]
///
/// Ideal for lists
class SimpleTravelItem extends StatelessWidget {
  /// Creates an item to display the info of thw given [travel]
  ///
  /// If [onTap] isn¿t provided the material ripple effect will be lost
  const SimpleTravelItem({
    Key? key,
    this.onTap,
    required this.travel,
  }) : super(key: key);

  /// Callback called when the card is tapped
  final VoidCallback? onTap;

  /// The travel that this widget will display
  final SimpleTravel travel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          travel.uriProfileImage,
          fit: BoxFit.cover,
        ),
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: 5),
          _buildOrigin(),
          const SizedBox(height: 5),
          _buildReviews(),
        ],
      ),
      title: StyledText(
        travel.title,
        type: StyledTextType.body2,
        bold: true,
      ),
    );
  }

  SizedBox _buildReviews() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              StyledText(
                '${travel.reviewsCount}',
                type: StyledTextType.body3,
                textColor: FreeWayTheme.gray3,
              ),
              const StyledText(
                ' opiniones',
                type: StyledTextType.body3,
                textColor: FreeWayTheme.gray3,
              ),
            ],
          ),
          StarsIndicator(ranking: travel.rating)
        ],
      ),
    );
  }

  Widget _buildOrigin() {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          const StyledText(
            'Lugar de origen: ',
            type: StyledTextType.body3,
            textColor: FreeWayTheme.gray3,
          ),
          StyledText(
            travel.origin,
            type: StyledTextType.body3,
            textColor: FreeWayTheme.gray3,
            bold: true,
          )
        ],
      ),
    );
  }
}
