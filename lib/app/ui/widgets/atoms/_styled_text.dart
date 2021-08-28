import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';

part '_styled_text_properties.dart';

/// A text with predefined styles based on the theme
class StyledText extends StatelessWidget {
  /// A text with predefined styles based on the theme
  const StyledText(this.text, {Key? key, this.textProperties = const TextProperties()})
      : super(key: key);

  /// The displayed string
  final String text;

  /// Optional modifiers for text
  final TextProperties textProperties;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyleByType(textProperties)?.copyWith(
        fontWeight: textProperties.bold == true ? FontWeight.bold : null,
        fontStyle: textProperties.italic == true ? FontStyle.italic : null,
        color: textProperties.color,
      ),
    );
  }
}
