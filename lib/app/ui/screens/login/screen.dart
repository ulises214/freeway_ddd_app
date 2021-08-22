import 'package:flutter/material.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/controllers/login_screen_controller.dart';
import 'package:freeway_app/app/ui/screens/login/widget/sign_up_link.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// The screen to login an existing user
class LoginScreen extends StatelessWidget {
  /// The screen to login an existing user
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController =
        DependencyContainer.i.getOrPut<LoginScreenController>(() => LoginScreenController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: FreeWayTheme.verticalGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              SignUpLink(onPressed: loginController.goToSignUp),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
