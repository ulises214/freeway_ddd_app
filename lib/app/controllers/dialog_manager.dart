import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';

/// Show dialogs across an unified interface
class DialogManager {
  final _logger = DependencyContainer.i.get<Logger>();

  /// Show an styled dialog
  void showErrorDialog({String title = 'Error', required String message}) {
    _logger.errorMessage('$title\n$message');
  }
}
