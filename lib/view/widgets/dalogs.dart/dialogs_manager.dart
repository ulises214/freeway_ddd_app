import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

/// A place to manaege all dialogs in the app
class DialogsManager {
  /// An dialog that display a error meesage with red title
  void showErrorDialog({
    String title = ErrorDialog.defaultTitle,
    required String text,
  }) {
    Get.dialog(ErrorDialog(
      text: text,
      title: title,
    ));
  }

  /// A successful message an icon to an action
  void showConfirmationDialog({
    String title = ConfirmationDialog.defualtTitle,
    required String content,
  }) {
    Get.dialog(ConfirmationDialog(title: title, content: content));
  }

  /// Show anything as dialog, prefered [BasicDialog] to preserve styles
  void showCustomDialog(Widget emailSentDialog) {
    Get.dialog(emailSentDialog);
  }
}
