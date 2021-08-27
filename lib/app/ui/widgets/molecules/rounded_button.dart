// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/styled_text.dart';

/// The sized than a rounded button can take
enum RoundedButtonSize {
  /// Takes the smallest width that this can take
  short,

  /// Takes the widest width that this can take
  long,

  /// Takes the smallest width that this can take
  /// as well as having fewer paddings
  tiny,
}

/// An button with rounded corners
class RoundedButton extends StatelessWidget {
  const RoundedButton._(
    this.text, {
    required this.size,
    this.backgroundColor,
    this.onPressed,
    this.textColor = Colors.white,
    this.gradientBackground,
    this.icon,
  });

  /// The function to call when this button is pressed
  ///
  /// If null the ripple effect of [Material] is lost
  final VoidCallback? onPressed;

  /// The text displayed inside this button
  final String text;

  /// The size that this button will take
  final RoundedButtonSize size;

  /// The background of this button
  ///
  /// If [gradientBackground] is not null,
  /// [backgroundColor] must be null
  final Color? backgroundColor;

  /// The background color that [text] will take
  final Color textColor;

  /// The background of this button
  ///
  /// If [backgroundColor] is not null,
  /// [gradientBackground] must be null
  final Gradient? gradientBackground;

  /// An optional widget that is displayedin left side of text
  final Widget? icon;

  /// Creates an rounded button with [FreeWayTheme.horizontalGradient]
  /// as gradient backround
  ///
  /// If [size] isn't provided it will take the minimum width with more paddings
  static Widget gradient(
    String text, {
    RoundedButtonSize size = RoundedButtonSize.short,
    Widget? icon,
    VoidCallback? onPressed,
  }) {
    if (onPressed == null) return gray(text, icon: icon, size: size);
    return RoundedButton._(text,
        gradientBackground: FreeWayTheme.horizontalGradient,
        size: size,
        icon: icon,
        onPressed: onPressed);
  }

  /// Creates an rounded button with [Colors.white]
  /// as color backround
  ///
  /// If [size] isn't provided it will take the minimum width with more paddings
  static Widget white(
    String text, {
    RoundedButtonSize size = RoundedButtonSize.short,
    Widget? icon,
    VoidCallback? onPressed,
  }) {
    return RoundedButton._(text,
        size: size,
        icon: icon,
        onPressed: onPressed,
        backgroundColor: Colors.white,
        textColor: FreeWayColors.extraBlue1);
  }

  /// Creates an rounded button with [FreeWayColors.gray1]
  /// as color backround
  ///
  /// If [size] isn't provided it will take the minimum width with more paddings
  static Widget gray(
    String text, {
    RoundedButtonSize size = RoundedButtonSize.short,
    Widget? icon,
    VoidCallback? onPressed,
  }) {
    return RoundedButton._(text,
        size: size,
        onPressed: onPressed,
        icon: icon,
        backgroundColor: FreeWayColors.gray1,
        textColor: FreeWayColors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == RoundedButtonSize.long ? double.infinity : null,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: gradientBackground,
        color: backgroundColor,
      ),
      child: MaterialButton(
        splashColor: textColor.withAlpha(20),
        shape: const StadiumBorder(),
        onPressed: onPressed,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Padding(
          padding: size == RoundedButtonSize.tiny
              ? const EdgeInsets.symmetric(vertical: 8.0)
              : const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (icon != null) icon!,
              if (icon != null) const SizedBox(width: 5.0),
              StyledText(
                text,
                textProperties: TextProperties(color: textColor, type: TextType.button),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
