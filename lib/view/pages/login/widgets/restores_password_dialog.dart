import 'package:flutter/material.dart';
import 'package:freeway_app/view/helpers/validators.dart';
import 'package:get/get.dart';

import '../../../../models_view/login_model_view.dart';
import '../../../assets_paths.dart';
import '../../../theme.dart';
import '../../../widgets/widgets.dart';

const _dialogText = 'Ingresa el correo electrónico con el que te inscribiste '
    'y te enviaremos instrucciones para restablecer tu contraseña.';

/// Dialog to send a restore password to a given email
class RestorePasswordDialog extends StatelessWidget {
  /// Create a dialog with a email input
  RestorePasswordDialog({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  final _loginViewModel = Get.find<LoginViewModel>();

  void _handleSubmit() {
    if (_formKey.currentState?.validate() == true) {
      _loginViewModel.requestRestorePassword(_emailController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: 'Reestablecer contraseña',
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText(
            _dialogText,
            type: StyledTextType.body1,
            textColor: FreeWayTheme.black,
          ),
          const SizedBox(height: 10),
          Form(
            key: _formKey,
            child: StyledFormInput(
              label: 'Correo electrónico',
              controller: _emailController,
              prefixIcon: SvgIcon(
                svgPath: AssetsPaths.icons.mail,
                color: FreeWayTheme.gray3,
              ),
              validator: FormValidators.isEmailAndRequired,
            ),
          ),
          const SizedBox(height: 10),
          RoundedButton.gradient('Reestablecer contraseña',
              size: RoundedButtonSize.long, onPressed: _handleSubmit),
          const SizedBox(height: 10),
          RoundedButton.gray('Cancelar',
              size: RoundedButtonSize.long, onPressed: Get.back),
        ],
      ),
    );
  }
}
