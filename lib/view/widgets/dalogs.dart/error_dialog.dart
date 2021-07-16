import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../theme.dart';

/// Show an Dialog with Icon and [text]
class ErrorDialog extends StatelessWidget {
  /// Creates a dialog to display an error, [text] is passed as [StyledText]
  /// to [BasicDialog] content
  const ErrorDialog({
    Key? key,
    required this.text,
    this.title = defaultTitle,
  }) : super(key: key);

  /// The default text when [title] isn't provided
  static const defaultTitle = 'Error';

  /// The message to display in a dialog
  final String text;

  /// The message to display in the dialog title
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: title,
      content: StyledText(
        text,
        type: StyledTextType.body1,
        textColor: FreeWayTheme.black,
      ),
    );
  }
}
