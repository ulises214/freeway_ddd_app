import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../assets_paths.dart';
import '../theme.dart';
import 'dialog.dart';
import 'rounded_buttons.dart';
import 'svg_icon.dart';
import 'texts.dart';

/// Dialog to show a success message
class ConfirmationDialog extends StatelessWidget {
  /// Creates a dialog with sucesss message
  const ConfirmationDialog({
    required this.content,
    Key? key,
    this.title = 'Éxito',
  }) : super(key: key);

  /// The title for the dialog
  final String title;

  /// The body for the dialog
  final String content;

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: title,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgIcon(
            svgPath: AssetsPaths.icons.success,
            color: FreeWayTheme.success,
            size: 70.0,
          ),
          const SizedBox(height: 10),
          StyledText(content,
              type: StyledTextType.body1, textColor: FreeWayTheme.black),
          const SizedBox(height: 10),
          RoundedButton.gradient('Aceptar', onPressed: Get.back),
        ],
      ),
    );
  }
}
