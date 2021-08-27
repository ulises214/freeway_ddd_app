import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/widgets/organisms/dialogs/error_dialog.dart';

/// Show dialogs across an unified interface
class DialogManager {
  final AppRouter _appRouter = DependencyContainer.i.get();

  /// Show an styled dialog
  void showErrorDialog({String title = 'Error', required String message}) {
    _appRouter.showDialog(ErrorDialog(text: message));
  }
}
