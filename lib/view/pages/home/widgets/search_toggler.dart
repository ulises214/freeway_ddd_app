import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../../assets_paths.dart';

/// ButtonIcon that switch between a search icon and a cancel icon
class SearchToggler extends StatelessWidget {
  /// Create the search icon toogler
  const SearchToggler({
    Key? key,
    required this.isSearching,
    required this.onPressed,
  }) : super(key: key);

  /// Function to call when icon is pressed
  final VoidCallback onPressed;

  /// Determines which icon is displayed
  final bool isSearching;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: IconButton(
        key: ValueKey<bool>(isSearching),
        onPressed: onPressed,
        icon: SvgIcon(
            svgPath: isSearching
                ? AssetsPaths.icons.cancel
                : AssetsPaths.icons.search,
            size: isSearching ? 16 : 22,
            color: Colors.white),
      ),
    );
  }
}
