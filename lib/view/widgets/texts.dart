import 'package:flutter/material.dart';

import '../theme.dart';

/// The styles that an StyledText can take
///
/// This styles are taken from [FreeWayTheme.theme]
enum StyledTextType {
  /// HeadLine5
  h5,

  /// HeadLine6
  h6,

  /// Body1
  body1,

  /// Body 2, bigger than Body1
  body2,

  /// Body 3, smallest than Body1
  body3,
}

/// A text styled with [FreeWayTheme.theme]
class StyledText extends StatelessWidget {
  /// Creates a Styled text dependengind of [type]
  ///
  /// This style the text given in [_text] acorrding of
  /// [FreeWayTheme.theme] text styles
  const StyledText(
    this._text, {
    required this.type,
    this.textColor,
    this.italic,
    this.bold,
    this.tiny,
    Key? key,
  }) : super(key: key);
  final String _text;

  /// Define the color thar [_text] will take
  final Color? textColor;

  /// If true the text will be displayed in italic style
  final bool? italic;

  /// If true the text will be displayed in bold style
  final bool? bold;

  /// If true the text will be displayed in tiny style
  final bool? tiny;

  /// The Style type that this text will take
  final StyledTextType type;

  @override
  Widget build(BuildContext context) {
    final textStyleBase = _getTextStyle(context);
    final fontWeight = tiny == true
        ? FontWeight.w300
        : bold == true
            ? FontWeight.bold
            : textStyleBase.fontWeight;
    final fontStyle =
        italic == true ? FontStyle.italic : textStyleBase.fontStyle;
    return Text(
      _text,
      style: textStyleBase.copyWith(
        fontWeight: fontWeight,
        color: textColor ?? FreeWayTheme.officialBlue1,
        fontStyle: fontStyle,
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    switch (type) {
      case StyledTextType.body1:
        return theme.bodyText1!;
      case StyledTextType.body2:
        return theme.bodyText2!;
      case StyledTextType.body3:
        return theme.bodyText1!.copyWith(fontSize: 12);

      case StyledTextType.h6:
        return theme.headline6!;
      case StyledTextType.h5:
        return theme.headline5!;
      default:
        return theme.bodyText1!;
    }
  }
}

/// A Styled text that could be clicked
class TextLink extends StatelessWidget {
  /// Creates a text that can be pressed
  ///
  /// If [onPressed] isn't provided the material ripple effect is loose
  const TextLink({
    required this.text,
    this.textColor = FreeWayTheme.extraBlue3,
    Key? key,
    this.onPressed,
    this.textType = StyledTextType.body1,
  }) : super(key: key);

  /// The function to call when its pressed
  final VoidCallback? onPressed;

  /// The text to display inside this widget
  final String text;

  /// The color that [text] will take
  final Color textColor;

  /// The style that [text] will take
  final StyledTextType textType;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: StyledText(
        text,
        type: textType,
        textColor: onPressed != null ? textColor : FreeWayTheme.gray1,
      ),
    );
  }
}
