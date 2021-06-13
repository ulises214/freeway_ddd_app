import 'package:flutter/material.dart';

import 'texts.dart';

/// A dialog base, provides shape, color and padings
class BasicDialog extends StatelessWidget {
  /// Creates a simple and white dialog
  const BasicDialog({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  /// The title for this dialog
  final String title;

  /// The body for this dialog
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: StyledText(
        title,
        type: StyledTextType.h6,
      ),
      content: content,
    );
  }
}
