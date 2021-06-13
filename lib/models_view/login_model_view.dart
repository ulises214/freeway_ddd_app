import 'package:get/get.dart';

import '../view/pages/login/widgets/email_sent_dialog.dart';
import '../view/pages/login/widgets/restores_password_dialog.dart';

/// Controller for login page
class LoginViewModel {
  /// Send login data to get the token and redirect to next page
  Future<void> login(String phoneNumber, String password) async {}

  /// Send a request to restore password in a email sent to [email]
  Future<void> requestRestorePassword(String email) async {
    Get.back();
    showEmailSentDialog();
  }

  /// Go to signup page to register a new user
  void goToSignup() {
    Get.toNamed('/signup');
  }

  /// Show a dialog to request a restere password email
  void showRestorePasswordDialog() {
    Get.dialog(RestorePasswordDialog());
  }

  /// Show confirmation when the email was sent
  void showEmailSentDialog() {
    Get.dialog(const EmailSentDialog());
  }
}
