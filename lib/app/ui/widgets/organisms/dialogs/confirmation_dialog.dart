import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';
import 'package:freeway_app/app/ui/widgets/atoms/atoms.dart';
import 'package:freeway_app/app/ui/widgets/molecules/molecules.dart';
import 'package:freeway_app/app/ui/widgets/organisms/dialogs/basic_dialog.dart';

/// Show an Dialog with Icon and [text]
class ConfirmationDialog extends StatelessWidget {
  /// Creates a dialog to display an error, [text] is passed as [StyledText]
  /// to [BasicDialog] content
  const ConfirmationDialog({
    Key? key,
    required this.text,
    this.title = defaultTitle,
  }) : super(key: key);

  /// The default text when [title] isn't provided
  static const defaultTitle = 'Éxito';

  /// The message to display in a dialog
  final String text;

  /// The message to display in the dialog title
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: _Title(title: title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText(
            text,
            textProperties: const TextProperties(color: FreeWayColors.black),
          ),
          const SizedBox(height: 15.0),
          RoundedButton.gradient('Aceptar', onPressed: () => Navigator.of(context).pop()),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(
          title,
          textProperties: const TextProperties(
            type: TextType.h6,
            color: FreeWayColors.officialBlue1,
          ),
        ),
        const Center(
          child: ModalIcon(FontAwesomeIcons.solidCircleCheck, color: FreeWayColors.success),
        ),
      ],
    );
  }
}
