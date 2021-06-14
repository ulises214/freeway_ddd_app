import 'package:flutter/material.dart';
import 'package:freeway_app/view/theme.dart';
import 'package:get/get.dart';

import '../../../../models_view/login/login_model_view.dart';
import '../../../assets_paths.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/widgets.dart';

/// Form for login user controllers
class LoginForm extends StatelessWidget {
  /// Create the form to login a user
  LoginForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _phoneFieldController = TextEditingController();
  final _passwordControllerFieldController = TextEditingController();
  final _loginViewModel = Get.find<LoginViewModel>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      constraints: const BoxConstraints(maxWidth: 450),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10.0),
            ..._builFields(),
          ]
              .expand((element) => [element, const SizedBox(height: 15.0)])
              .toList(),
        ),
      ),
    );
  }

  List<Widget> _builFields() {
    return [
      StyledFormInput(
          label: 'Número teléfonico',
          prefixIcon: SvgIcon(
            svgPath: AssetsPaths.icons.user,
            color: FreeWayTheme.gray3,
          ),
          validator: FormValidators.isPhoneNumberAndRequired,
          controller: _phoneFieldController),
      StyledPasswordFormInput(
        validator: FormValidators.isValidPassowordAndRequired,
        controller: _passwordControllerFieldController,
      ),
      RoundedButton.gradient(
        'Iniciar sesión',
        onPressed: () {
          if (_formKey.currentState?.validate() == true) {
            _loginViewModel.login(_phoneFieldController.text,
                _passwordControllerFieldController.text);
          }
        },
      ),
      TextLink(
        text: '¿Contraseña olvidada?',
        onPressed: _loginViewModel.showRestorePasswordDialog,
        textColor: FreeWayTheme.extraBlue2,
      )
    ];
  }
}
