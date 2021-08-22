import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/styled_text.dart';

/// A Styled text that could be clicked
class TextLink extends StatelessWidget {
  /// Creates a text that can be pressed
  ///
  /// If [onPressed] isn't provided the material ripple effect is loose
  const TextLink(
    this.text, {
    Key? key,
    this.onPressed,
    this.textProperties,
  }) : super(key: key);

  /// The function to call when this widget is pressed
  final VoidCallback? onPressed;

  /// The text passed to [StyledText]
  final String text;

  /// The properties passed to [StyledText]
  final TextProperties? textProperties;

  @override
  Widget build(BuildContext context) {
    final textColor = onPressed != null ? textProperties?.color : FreeWayTheme.gray3;
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: StyledText(
            text,
            textProperties: textProperties != null
                ? textProperties!.copyWith(color: textColor)
                : TextProperties(
                    color: textColor,
                  ),
          ),
        ),
      ),
    );
  }
}
