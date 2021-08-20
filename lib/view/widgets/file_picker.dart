// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:file_picker/file_picker.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/theme.dart';
import '../assets_paths.dart';
import 'rounded_buttons.dart';
import 'svg_icon.dart';
import 'texts.dart';

/// Controller for file picker widget
///
/// Manage and store the file data
class FilePickerController extends ValueNotifier<File?> {
  /// Creates a new controller with null data
  FilePickerController() : super(null);

  /// Update the file data
  set file(File? file) {
    value = file;
    notifyListeners();
  }
}

/// Widget to pick a file from the device
class StyledFilePicker extends StatefulWidget {
  /// Creates a file picker from the device
  const StyledFilePicker({
    Key? key,
    required this.label,
    required this.controller,
    this.labelColor = FreeWayTheme.black,
  }) : super(key: key);

  /// The title of this widget
  final String label;

  /// The controller to manage the file picked
  final FilePickerController controller;

  /// Color for label text
  final Color labelColor;

  @override
  _StyledFilePickerState createState() => _StyledFilePickerState();
}

class _StyledFilePickerState extends State<StyledFilePicker> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.controller,
      builder: (context, File? value, child) => child!,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: StyledText(
              widget.label,
              textColor: widget.labelColor,
              type: StyledTextType.body1,
            ),
          ),
          RoundedButton.gradient(
            'Subir archivos',
            icon: SvgIcon(
              svgPath: AssetsPaths.icons.uploadFile,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () => _selectFile(context),
            size: RoundedButtonSize.long,
          ),
          RoundedButton.gray('Eliminar archivo',
              size: RoundedButtonSize.long,
              icon: SvgIcon(
                svgPath: AssetsPaths.icons.cancel,
                color: FreeWayTheme.danger,
              ),
              onPressed: () => _deleteFile(context)),
        ]
            .expand((element) => [
                  element,
                  const SizedBox(height: 10.0),
                ])
            .toList(),
      ),
    );
  }

  void _selectFile(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      var file = File(result.files.single.path!);
      _confirmationFile(context, result.files.single.path!.split('/').last);

      widget.controller.value = file;
    }
  }

  void _deleteFile(BuildContext context) {
    widget.controller.value = null;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: StyledText(
          'Archivo eliminado',
          type: StyledTextType.body1,
          bold: true,
          textColor: Colors.white,
        ),
      ),
    );
  }

  void _confirmationFile(BuildContext context, String fileName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const StyledText(
              'Archivo cargado',
              type: StyledTextType.body1,
              bold: true,
              textColor: Colors.white,
            ),
            StyledText(
              fileName,
              type: StyledTextType.body1,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
