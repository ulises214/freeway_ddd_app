// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/controllers/controller.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/screens/login/widget/login_form.dart';
import 'package:freeway_app/app/ui/screens/login/widget/login_form_wrapper.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';

/// The screen to login an existing user
class LoginScreen extends StatelessWidget {
  /// The screen to login an existing user
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = DependencyContainer.i.getOrPut<LoginScreenController>(
      () => LoginScreenController(),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(gradient: FreeWayTheme.horizontalGradient),
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: LoginFormWrapper(
            child: LoginForm(
              onSubmit: loginController.login,
              showRestorePasswordDialog: loginController.showRestorePasswordDialog,
              goToSignUp: loginController.goToSignUp,
            ),
          ),
        ),
      ),
    );
  }
}
