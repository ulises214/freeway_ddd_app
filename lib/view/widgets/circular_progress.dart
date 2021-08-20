// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../theme.dart';

/// A styled circular progresss indicator
class CircularLoading extends StatelessWidget {
  /// Creates a prgressindicator with [color] as main color and
  /// [Colors.transparent] as background
  const CircularLoading({
    Key? key,
    this.color = FreeWayTheme.officialBlue2,
  }) : super(key: key);

  /// The main color
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 4,
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}
