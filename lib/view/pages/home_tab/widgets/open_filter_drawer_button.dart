// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../theme.dart';

/// Widget to open the filter menu
class OpenFilterDrawerButton extends StatelessWidget {
  /// Create a material inkwell with filter icon

  const OpenFilterDrawerButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  /// The callback to call the inkwell is tapped
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    const radius = BorderRadius.only(
      topLeft: Radius.circular(32),
      bottomLeft: Radius.circular(32),
    );
    return Material(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(borderRadius: radius),
      child: InkWell(
        borderRadius: radius,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0).copyWith(right: 16.0),
          child: Stack(
            children: const [
              Icon(
                Icons.filter_alt_outlined,
                color: FreeWayTheme.officialBlue2,
              ),
              Positioned(
                bottom: 1.0,
                right: -4.0,
                child: Icon(
                  Icons.add,
                  color: FreeWayTheme.officialBlue2,
                  size: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
