import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// Define the style for the text, follow the [TextTheme] types
enum TextType {
  /// Headline 6
  h6,

  /// Body 1
  body1,

  /// Body 2
  body2,
}

/// Define common properites for text constructors
class TextProperties {
  /// Gets the common properties for text
  const TextProperties({
    this.bold,
    this.italic,
    this.color,
    this.type = TextType.body1,
  });

  /// If the text is bold
  final bool? bold;

  /// If the text is italic
  final bool? italic;

  /// Optional color for the text
  final Color? color;

  /// Define the base style for the text
  final TextType type;

  /// Makes a copy of all properties
  TextProperties copyWith({
    bool? bold,
    bool? italic,
    Color? color,
    TextType? type,
  }) {
    return TextProperties(
      bold: bold ?? this.bold,
      italic: italic ?? this.italic,
      color: color ?? this.color,
      type: type ?? this.type,
    );
  }
}

/// A text with predefined styles based on the theme
class StyledText extends StatelessWidget {
  /// A text with predefined styles based on the theme
  const StyledText(this.text, {Key? key, this.textProperties}) : super(key: key);

  TextStyle? _getStyleByType() {
    if (textProperties == null) return FreeWayTheme.theme.textTheme.bodyText1;
    final textTheme = FreeWayTheme.theme.textTheme;
    switch (textProperties!.type) {
      case TextType.h6:
        return textTheme.headline6;
      case TextType.body1:
        return textTheme.bodyText1;
      case TextType.body2:
        return textTheme.bodyText2;
    }
  }

  /// The displayed string
  final String text;

  /// Optional modifiers for text
  final TextProperties? textProperties;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyleByType()?.copyWith(
        fontWeight: textProperties?.bold == true ? FontWeight.bold : null,
        fontStyle: textProperties?.italic == true ? FontStyle.italic : null,
        color: textProperties?.color,
      ),
    );
  }
}
