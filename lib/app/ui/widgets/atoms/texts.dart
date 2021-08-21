import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// Define common properites for text constructors
class TextProperites {
  /// Gets the common properties for text
  TextProperites({this.bold, this.italic, this.color});

  /// If the text is bold
  final bool? bold;

  /// If the text is italic
  final bool? italic;

  /// Optional color for the text
  final Color? color;
}

/// A text with predefined styles based on the them
class StyledText extends StatelessWidget {
  const StyledText._(this.text, this.baseStyle, {Key? key, this.textProperties}) : super(key: key);

  /// Predefined Headline 6 text
  factory StyledText.h6(String text, {TextProperites? textProperties}) =>
      StyledText._(text, FreeWayTheme.theme.textTheme.headline6, textProperties: textProperties);

  /// Predefined Body 1 text
  factory StyledText.body1(String text, {TextProperites? textProperties}) =>
      StyledText._(text, FreeWayTheme.theme.textTheme.bodyText1, textProperties: textProperties);

  /// The displayed string
  final String text;

  /// The base theme for the text
  final TextStyle? baseStyle;

  /// Optional modifiers for text
  final TextProperites? textProperties;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: baseStyle?.copyWith(
        fontWeight: textProperties?.bold == true ? FontWeight.bold : null,
        fontStyle: textProperties?.italic == true ? FontStyle.italic : null,
        color: textProperties?.color,
      ),
    );
  }
}
