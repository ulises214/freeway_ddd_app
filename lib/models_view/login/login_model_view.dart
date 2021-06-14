import 'package:ferry/ferry.dart';
import 'package:freeway_app/router.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../model/user/models.dart';
import '../../view/pages/login/widgets/email_sent_dialog.dart';
import '../../view/pages/login/widgets/restores_password_dialog.dart';
import 'graphql/login.req.gql.dart';

/// Controller for login page
class LoginViewModel {
  /// Initialize state
  LoginViewModel();
  final _client = Get.find<Client>();

  /// Send login data to get the token and redirect to next page
  Future<void> login(UserData userData) async {
    final req = GLoginReq(
      (b) => b
        ..vars.input.cellphone.lada = userData.lada
        ..vars.input.cellphone.number = userData.phoneNumber
        ..vars.input.password = userData.password,
    );
    try {
      final result = await _client
          .request(req)
          .firstWhere((res) => res.dataSource != DataSource.Optimistic);
      if (result.data != null) {
        return Router.toHomeFromLogin(result.data!.signIn!.token);
      } else if (result.linkException != null) {
        return showErrorDialog(result.linkException.toString());
      } else if (result.hasErrors) {
        return showErrorDialog(result.graphqlErrors!.first.message);
      }
    } catch (e) {
      return showErrorDialog(e.toString());
    }
  }

  /// Send a request to restore password in a email sent to [email]
  Future<void> requestRestorePassword(String email) async {
    Router.closeDialog();
    showEmailSentDialog();
  }

  /// Go to signup page to register a new user
  void goToSignup() => Router.goToSignup();

  /// Show a dialog to request a restere password email
  void showRestorePasswordDialog() {
    Get.dialog(RestorePasswordDialog());
  }

  /// Show confirmation when the email was sent
  void showEmailSentDialog() {
    Get.dialog(const EmailSentDialog());
  }
}
