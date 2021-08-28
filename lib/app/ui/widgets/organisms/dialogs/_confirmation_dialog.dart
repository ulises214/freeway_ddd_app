part of '_dialogs.dart';

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
      title: _Title(
        title: title,
        icon: const ModalIcon(FontAwesomeIcons.solidCircleCheck, color: FreeWayColors.success),
      ),
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
