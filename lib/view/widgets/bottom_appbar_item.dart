import 'package:flutter/material.dart';

import '../theme.dart';
import 'svg_icon.dart';
import 'texts.dart';

/// Button icon that is displayed in a bottom appbar
class BottomAppBarItem extends StatelessWidget {
  /// Creates a button for bottom appbar
  const BottomAppBarItem({
    Key? key,
    required this.svgPath,
    required this.isSelected,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  /// The svg icon to display
  final String svgPath;

  /// The current state for this item
  final bool isSelected;

  /// Function to call when item is selected
  final VoidCallback onPressed;

  /// The title for this item
  final String label;

  @override
  Widget build(BuildContext context) {
    final deviceWith = MediaQuery.of(context).size.width;
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      elevation: 0.0,
      focusElevation: 1.0,
      highlightElevation: 1.0,
      onPressed: !isSelected ? onPressed : () {},
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgIcon(
            svgPath: svgPath,
            color: isSelected ? FreeWayTheme.extraBlue1 : FreeWayTheme.gray3,
            size: 26,
          ),
          if (deviceWith > 330.0)
            StyledText(
              label,
              type: StyledTextType.body1,
              textColor: isSelected ? FreeWayTheme.extraBlue1 : FreeWayTheme.gray3,
            )
        ],
      ),
    );
  }
}
