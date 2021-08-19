import 'package:ferry/ferry.dart';
import 'package:freeway_app/graphq_requests/user/user_requests.dart';
import 'package:freeway_app/router.dart';
import 'package:freeway_app/view/pages/login/widgets/restores_password_dialog.dart';
import 'package:freeway_app/view/widgets/dalogs.dart/dialogs_manager.dart';
import 'package:get/get.dart';

import '../../../model/user/models.dart';

/// Controller for login page
class LoginViewModel {
  final _client = Get.find<Client>();
  final UserRequestsBuilder _requesBuilder = Get.find();
  final FreeWayRouter _router = Get.find();
  final DialogsManager _dialogsManager = Get.find();

  /// Send login data to get the token and redirect to next page
  Future<void> login(UserData userData) async {
    final req = _requesBuilder.loginRequest(userData);
    try {
      final result =
          await _client.request(req).firstWhere((res) => res.dataSource != DataSource.Optimistic);
      if (result.data?.signIn != null) {
        return _router.toHomeFromLogin(result.data!.signIn!.token);
      } else if (result.linkException != null) {
        return _dialogsManager.showErrorDialog(
          title: 'Error de conexión',
          text: result.linkException.toString(),
        );
      } else if (result.hasErrors) {
        return _dialogsManager.showErrorDialog(
          title: 'Error de datos',
          text: result.graphqlErrors!.first.message,
        );
      }
    } catch (e) {
      return _dialogsManager.showErrorDialog(text: e.toString());
    }
  }

  /// Send a request to restore password in a email sent to [email]
  Future<void> requestRestorePassword(String email) async {
    _router.closeDialog();
    _dialogsManager.showCustomDialog(RestorePasswordDialog());
  }

  /// Go to signup page to register a new user
  void goToSignup() => _router.goToSignup();

  /// Show a dialog to request a restere password email
  void showRestorePasswordDialog() {
    _dialogsManager.showCustomDialog(RestorePasswordDialog());
  }

  /// Show confirmation when the email was sent
  void showEmailSentDialog() {
    _dialogsManager.showConfirmationDialog(
        content: 'El correo para restablecer tu contraseña se ha enviado, '
            'no olvides revisar en tu carpeta de spam.');
  }
}
