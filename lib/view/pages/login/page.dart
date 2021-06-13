import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models_view/login_model_view.dart';
import '../../theme.dart';
import 'widgets/form_wrapper.dart';
import 'widgets/signup_link.dart';

/// Page to login user
class LoginPage extends StatefulWidget {
  /// Creates the login page
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    Get.put(LoginViewModel());
  }

  @override
  void dispose() {
    Get.delete<LoginViewModel>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration:
            const BoxDecoration(gradient: FreeWayTheme.verticalGradient),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: const [
                LoginFormWrapper(),
                Positioned(
                  bottom: 15.0,
                  child: SignUpLink(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
