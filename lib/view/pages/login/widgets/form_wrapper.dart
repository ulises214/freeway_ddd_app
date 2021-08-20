// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../widgets/widgets.dart';
import 'login_form.dart';

/// A wrapper to define borders and set Logo in the form
class LoginFormWrapper extends StatelessWidget {
  /// Create the wrapper with the logo in the top
  const LoginFormWrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 32.0, right: 32.0),
            child: LoginForm(),
          ),
        ),
        const Positioned(top: -110, child: ElevatedLogo()),
      ],
    );
  }
}
