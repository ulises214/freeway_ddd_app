// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../../../../models_view/login/login_model_view.dart';
import '../../../widgets/widgets.dart';

/// Text for go to signup page
class SignUpLink extends StatelessWidget {
  /// Create a text link with to change page
  const SignUpLink({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const StyledText(
          '¿No tienes una cuenta?',
          type: StyledTextType.body1,
          textColor: Colors.white,
        ),
        TextLink(text: ' Regístrate', onPressed: Get.find<LoginViewModel>().goToSignup),
      ],
    );
  }
}
