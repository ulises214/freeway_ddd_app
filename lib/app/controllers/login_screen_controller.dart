import 'package:freeway_app/app/controllers/dialog_manager.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/ui/screens/login/widget/restore_password_dialog.dart';
import 'package:freeway_app/app/ui/shared/dialogs_messages.dart';
import 'package:freeway_app/context/local_storage/application/access_token/access_token_uses_cases.dart';
import 'package:freeway_app/context/shared/application/application.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/user/application/user_uses_cases.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

/// The controller for the operations in the login screen
class LoginScreenController {
  final QueryBus _queryBus = DependencyContainer.i.get();
  final Logger _logger = DependencyContainer.i.get();
  final DialogManager _dialogManager = DependencyContainer.i.get();
  final AppRouter _router = DependencyContainer.i.get();

  /// Calls to [UserRepository] to login the user
  Future<void> login(UserData userData) async {
    try {
      final tokenResponse = await _queryBus.ask<AccessTokenReponse>(LoginUserQuery(userData));
      await _queryBus.ask(SaveAccessTokenQuery(tokenResponse.token));
      _router.offAll(RoutesDefinitions.home);
    } on AuthException catch (e) {
      _manageAuthExceptions(e);
    } on ConnectionException {
      _dialogManager.showErrorDialog(message: DialogMesagges.connectionError);
    } on CustomException catch (e) {
      _dialogManager.showErrorDialog(title: 'Error inesperado', message: e.cause ?? '');
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  void _manageAuthExceptions(AuthException e) {
    if (e is ServerError) {
      _dialogManager.showErrorDialog(message: DialogMesagges.serverError);
    } else if (e is InvalidCredentialsException) {
      _dialogManager.showErrorDialog(message: DialogMesagges.invalidCredentialsError);
    }
  }

  /// Run the query to send an restore email passowrd
  Future<void> sendRestorePasswordEmail(EmailAddress email) async {
    try {
      await _queryBus.ask(RestoreUserPasswordQuery(email));
      _dialogManager
        ..closeDialog()
        ..showConfirmationDialog(message: DialogMesagges.restorePasswordEmailSent);
    } on ConnectionException {
      _dialogManager.showErrorDialog(message: DialogMesagges.connectionError);
    } on ServerError {
      _dialogManager.showErrorDialog(message: DialogMesagges.serverError);
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  /// Show a modal to sena restore passowrd email
  void showRestorePasswordDialog() {
    _dialogManager.showCustomDialog(RestorePasswordDialog(onSubmit: sendRestorePasswordEmail));
  }

  /// Got to signup page
  void goToSignUp() {
    _router.offAll(RoutesDefinitions.signup);
  }
}
