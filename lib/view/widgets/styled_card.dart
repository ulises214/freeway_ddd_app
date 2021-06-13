import 'package:flutter/material.dart';

/// A Card width predefined shape, paddings and ripple effect
class StyledCard extends StatelessWidget {
  /// Creates a card with predefined styles
  ///
  /// If [onPressed] is null it will lost the Material ripple effect
  const StyledCard({
    Key? key,
    this.title,
    this.hasDivider = false,
    required this.body,
    this.tinyTitle = false,
    this.onPressed,
  }) : super(key: key);

  /// The title of the card
  final Widget? title;

  /// If true set a divider between title and body
  final bool hasDivider;

  /// The content of the card
  final Widget body;

  /// If true the [title] will have less padding
  final bool tinyTitle;

  /// Function to call when the card is pressed
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16.0);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: EdgeInsets.only(
                    top: tinyTitle ? 0.0 : 10.0, left: 10.0, right: 10.0),
                child: title!,
              ),
            if (hasDivider) const Divider(),
            body
          ],
        ),
      ),
    );
  }
}
