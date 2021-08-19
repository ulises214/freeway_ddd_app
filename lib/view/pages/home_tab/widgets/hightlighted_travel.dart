import 'package:flutter/material.dart';

import 'hightlighted_travel_card.dart';

/// Widget that display a list of hightlighted travels
class HighlightedTravel extends StatelessWidget {
  /// Create the list of hightligetd travels
  const HighlightedTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: List.generate(3, (e) => HightLightedTravelCard()).toList().toList(),
        ),
      ),
    );
  }
}
