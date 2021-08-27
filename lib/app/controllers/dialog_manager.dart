import 'package:flutter/material.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/widgets/organisms/dialogs/confirmation_dialog.dart';
import 'package:freeway_app/app/ui/widgets/organisms/dialogs/error_dialog.dart';
import 'package:freeway_app/app/ui/widgets/organisms/dialogs/basic_dialog.dart';

/// Show dialogs across an unified interface
class DialogManager {
  final AppRouter _appRouter = DependencyContainer.i.get();

  /// Show an styled dialog
  void showErrorDialog({String title = 'Error', required String message}) {
    _appRouter.showDialog(ErrorDialog(title: title, text: message));
  }

  /// Show an styled confirmation dialog
  void showConfirmationDialog({String title = 'Éxito', required String message}) {
    _appRouter.showDialog(ConfirmationDialog(title: title, text: message));
  }

  /// Check if a dialog is open then close is
  void closeDialog() {
    _appRouter.pop();
  }

  /// Show a widget as dialog, use [BasicDialog] to mantain the app style
  void showCustomDialog(Widget dialog) => _appRouter.showDialog(dialog);
}