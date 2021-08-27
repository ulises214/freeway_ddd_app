import 'package:freeway_app/app/controllers/dialog_manager.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/context/shared/domain/exceptions/auth_exceptions.dart';
import 'package:freeway_app/context/shared/domain/exceptions/connection_exception.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

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
      _dialogManager.showErrorDialog(message: 'Revise su conexión e intentelo de nuevo');
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  void _manageAuthExceptions(AuthException e) {
    if (e is PhoneNumberAlreadyInUse) {
      _dialogManager.showErrorDialog(message: 'El numero telefonico ya está en uso');
    } else if (e is ServerError) {
      _dialogManager.showErrorDialog(message: 'Ha ocurrido un error, intentelo de nuevo más tarde');
    } else if (e is InvalidEmailOrPassword) {
      _dialogManager.showErrorDialog(
          message: 'El número teléfonico o la contraseña no son validos');
    } else if (e is InvalidCredentialsException) {
      _dialogManager.showErrorDialog(
          message: 'El número teléfonico o la contraseña no son validos');
    }
  }

  /// Got to signup page
  void goToSignUp() {
    return;
    DependencyContainer.i.get<AppRouter>().off(RoutesDefinitions.splash);
  }
}
