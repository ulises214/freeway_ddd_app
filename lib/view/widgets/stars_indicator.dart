// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../theme.dart';

/// A widget to display an int value with stars icons
class StarsIndicator extends StatelessWidget {
  /// Creates a list of 5 outlined stars and fill the star only when [ranking]
  /// is more or equal to the star position
  ///
  /// If [incomplete] is true then only filled stars will be displayed
  ///
  /// Example:
  /// ```dart
  /// StarsIndicator(ranking:4);
  /// ```
  /// This will display 4 filled stars an 1 outlined start
  ///
  const StarsIndicator({
    Key? key,
    required this.ranking,
    this.incomplete = false,
  })  : assert(ranking >= 0 && ranking <= 5),
        super(key: key);

  /// The number of stars to be displayed as filled
  final int ranking;

  /// If true only filled stars will be displayed
  final bool incomplete;
  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData.fallback().copyWith(color: FreeWayTheme.warning),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          incomplete ? ranking : 5,
          (index) => Icon(ranking >= index + 1 ? Icons.star : Icons.star_border),
        ),
      ),
    );
  }
}
