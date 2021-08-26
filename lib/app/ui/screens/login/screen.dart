import 'package:flutter/material.dart';
import 'package:freeway_app/app/controllers/login_screen_controller.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/screens/login/widget/login_form.dart';
import 'package:freeway_app/app/ui/screens/login/widget/login_form_wrapper.dart';
import 'package:freeway_app/app/ui/screens/login/widget/sign_up_link.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

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
        width: double.infinity,
        decoration: const BoxDecoration(gradient: FreeWayTheme.verticalGradient),
        child: SafeArea(
          child: Column(
            children: [
              const Expanded(child: SizedBox.shrink()),
              _FormConstraint(loginController: loginController),
              const Expanded(child: SizedBox.shrink()),
              SignUpLink(onPressed: loginController.goToSignUp),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormConstraint extends StatelessWidget {
  const _FormConstraint({Key? key, required this.loginController}) : super(key: key);

  final LoginScreenController loginController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      constraints: const BoxConstraints(maxWidth: 470.0),
      child: LoginFormWrapper(
        child: LoginForm(
          onSubmit: loginController.login,
          showRestorePasswordDialog: () {},
        ),
      ),
    );
  }
}
