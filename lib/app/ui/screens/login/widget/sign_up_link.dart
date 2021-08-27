import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/styled_text.dart';
import 'package:freeway_app/app/ui/widgets/atoms/text_link.dart';

/// Creates the bottom text for the login page
class SignUpLink extends StatelessWidget {
  /// Creates the bottom text for the login page
  const SignUpLink({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  /// The callback to go to a new page
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5.0,
      direction: Axis.horizontal,
      children: [
        const StyledText(
          '¿No tienes una cuenta?',
          textProperties: TextProperties(type: TextType.button, color: FreeWayTheme.extraBlue2),
        ),
        TextLink(
          'Regístrate',
          onPressed: onPressed,
          textProperties: const TextProperties(
            type: TextType.button,
            color: FreeWayTheme.extraBlue2,
            bold: true,
          ),
        ),
      ],
    );
  }
}
