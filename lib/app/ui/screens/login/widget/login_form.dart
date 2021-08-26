// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeway_app/app/ui/shared/text_form_validator.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/input_icon.dart';
import 'package:freeway_app/app/ui/widgets/atoms/styled_text.dart';
import 'package:freeway_app/app/ui/widgets/atoms/text_link.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/password_form_input.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/text_form_input.dart';
import 'package:freeway_app/app/ui/widgets/molecules/rounded_button.dart';
import 'package:freeway_app/context/shared/domain/common_types/phone_number.dart';
import 'package:freeway_app/context/shared/domain/common_types/valid_password.dart';
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';

/// Form for login user controllers
class LoginForm extends StatelessWidget {
  /// Create the form to login a user
  LoginForm({
    Key? key,
    required this.onSubmit,
    required this.showRestorePasswordDialog,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _phoneFieldController = TextEditingController();
  final _passwordControllerFieldController = TextEditingController();

  /// when a [TextLink] is pressed show a dialog to restore the password
  final VoidCallback showRestorePasswordDialog;

  /// Function called when form is submitted
  final void Function(UserData) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: _builFields(),
      ),
    );
  }

  List<Widget> _builFields() {
    return [
      StyledTextFormInput(
        label: 'Número teléfonico',
        prefixIcon: const InputIcon(FontAwesomeIcons.user),
        controller: _phoneFieldController,
        validator: TextFromValidator('Número teléfonico no válido', (v) {
          if (v == null) throw InvalidArgumentException();
          return PhoneNumber(v);
        }),
      ),
      const SizedBox(height: 10.0),
      StyledPasswordFormInput(
        controller: _passwordControllerFieldController,
        validator: TextFromValidator('La contraseña debe contener al menos 8 caracteres', (v) {
          if (v == null) throw InvalidArgumentException();
          return ValidPassword(v);
        }),
      ),
      const SizedBox(height: 10.0),
      RoundedButton.gradient(
        'Iniciar sesión',
        onPressed: () {
          if (_formKey.currentState?.validate() == true) {
            onSubmit(UserData(
              password: ValidPassword(_passwordControllerFieldController.text),
              phoneNumber: PhoneNumber(_phoneFieldController.text),
            ));
          }
        },
      ),
      const SizedBox(height: 15.0),
      TextLink(
        '¿Contraseña olvidada?',
        onPressed: showRestorePasswordDialog,
        textProperties: const TextProperties(color: FreeWayTheme.extraBlue2),
      )
    ];
  }
}
