part of './styled_text.dart';

/// Define the style for the text, follow the [TextTheme] types
enum TextType {
  /// Headline 1
  h1,

  /// Headline 2,
  h2,

  /// Headline 3,
  h3,

  /// Headline 4,
  h4,

  /// Headline 5,
  h5,

  /// Headline 6
  h6,

  /// Body 1
  body1,

  /// Body 2
  body2,

  /// Caption
  caption,

  /// Button
  button,
}

/// Define common properites for text constructors
class TextProperties {
  /// Gets the common properties for text
  const TextProperties({
    this.bold,
    this.italic,
    this.color,
    this.type,
  });

  /// If the text is bold
  final bool? bold;

  /// If the text is italic
  final bool? italic;

  /// Optional color for the text
  final Color? color;

  /// Define the base style for the text
  final TextType? type;

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

TextStyle? _getStyleByType(TextProperties textProperties) {
  final textTheme = FreeWayTheme.theme.textTheme;
  switch (textProperties.type) {
    case null:
      return textTheme.bodyText1;
    case TextType.h1:
      return textTheme.headline1;
    case TextType.h6:
      return textTheme.headline6;
    case TextType.body1:
      return textTheme.bodyText1;
    case TextType.body2:
      return textTheme.bodyText2;
    case TextType.caption:
      return textTheme.caption;
    case TextType.button:
      return textTheme.button;
    case TextType.h2:
      return textTheme.headline2;
    case TextType.h3:
      return textTheme.headline2;
    case TextType.h4:
      return textTheme.headline4;
    case TextType.h5:
      return textTheme.headline5;
  }
}
