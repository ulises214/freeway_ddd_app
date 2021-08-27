import 'package:freeway_app/app/controllers/dialog_manager.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/ui/screens/login/widget/restore_password_dialog.dart';
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/shared/domain/exceptions/auth_exceptions.dart';
import 'package:freeway_app/context/shared/domain/exceptions/connection_exception.dart';
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

const _confimrationDialogMessage =
    'El correo para restablecer tu contraseña se ha enviado, no olvides revisar en tu carpeta de spam.';
const _serverErrorMessage = 'Ha ocurrido un error, intentelo de nuevo más tarde';
const _connectionErrorMessage = 'Revise su conexión e intentelo de nuevo'
    'Revise su conexión e intentelo de nuevo';

/// The controller for the operations in the login screen
class LoginScreenController {
  final UserRepository _repository = DependencyContainer.i.get();
  final Logger _logger = DependencyContainer.i.get();
  final DialogManager _dialogManager = DependencyContainer.i.get();

  /// Calls to [UserRepository] to login the user
  Future<void> login(UserData userData) async {
    try {
      final token = await _repository.login(userData);
      _logger.info(token.value);
    } on AuthException catch (e) {
      _manageAuthExceptions(e);
    } on ConnectionException {
      _dialogManager.showErrorDialog(message: _connectionErrorMessage);
    } on CustomException catch (e) {
      _dialogManager.showErrorDialog(title: 'Error inesperado', message: e.cause ?? '');
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  void _manageAuthExceptions(AuthException e) {
    if (e is ServerError) {
      _dialogManager.showErrorDialog(message: _serverErrorMessage);
    } else if (e is InvalidCredentialsException) {
      _dialogManager.showErrorDialog(
          message: 'El número teléfonico o la contraseña no son válidos');
    }
  }

  void _submitRestorePasswordDialog(EmailAddress email) async {
    try {
      await _repository.requestRestorePassword(email);
      _dialogManager
        ..closeDialog()
        ..showConfirmationDialog(message: _confimrationDialogMessage);
    } on ConnectionException {
      _dialogManager.showErrorDialog(message: _connectionErrorMessage);
    } on ServerError {
      _dialogManager.showErrorDialog(message: _serverErrorMessage);
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  /// Show a modal to sena restore passowrd email
  void showRestorePasswordDialog() {
    _dialogManager.showCustomDialog(RestorePasswordDialog(onSubmit: _submitRestorePasswordDialog));
  }

  /// Got to signup page
  void goToSignUp() {
    return;
    DependencyContainer.i.get<AppRouter>().off(RoutesDefinitions.splash);
  }
}
