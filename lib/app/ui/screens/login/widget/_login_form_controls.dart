part of './login_form.dart';

class _SubmitButton extends StatelessWidget {
  const _SubmitButton(this._onSubmit, {Key? key}) : super(key: key);
  final VoidCallback _onSubmit;

  @override
  Widget build(BuildContext context) => RoundedButton.gradient(
        'Iniciar sesión',
        size: RoundedButtonSize.long,
        onPressed: _onSubmit,
      );
}

class _ForgottenPassword extends StatelessWidget {
  const _ForgottenPassword({
    Key? key,
    required this.showRestorePasswordDialog,
  }) : super(key: key);

  final VoidCallback showRestorePasswordDialog;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextLink(
          '¿Contraseña olvidada?',
          onPressed: showRestorePasswordDialog,
          textProperties: const TextProperties(color: FreeWayTheme.extraBlue2),
        ),
      ],
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({
    Key? key,
    required TextEditingController passwordControllerFieldController,
  })  : _passwordControllerFieldController = passwordControllerFieldController,
        super(key: key);

  final TextEditingController _passwordControllerFieldController;

  @override
  Widget build(BuildContext context) {
    return CleanPasswordFormInput(
      title: const StyledText(
        'Contraseña',
        textProperties: TextProperties(
          type: TextType.body1,
          bold: true,
          color: FreeWayTheme.officialBlue2,
        ),
      ),
      controller: _passwordControllerFieldController,
      validator: TextFromValidator('La contraseña debe contener al menos 8 caracteres', (v) {
        if (v == null) throw InvalidArgumentException();
        return ValidPassword(v);
      }),
    );
  }
}

class _PhoneInput extends StatelessWidget {
  const _PhoneInput({
    Key? key,
    required TextEditingController phoneFieldController,
  })  : _phoneFieldController = phoneFieldController,
        super(key: key);

  final TextEditingController _phoneFieldController;

  @override
  Widget build(BuildContext context) {
    return CleanTextFormInput(
      title: const StyledText(
        'Número teléfonico',
        textProperties: TextProperties(
          type: TextType.body1,
          bold: true,
          color: FreeWayTheme.officialBlue2,
        ),
      ),
      label: 'Tú numero de teléfono',
      controller: _phoneFieldController,
      validator: TextFromValidator('Número teléfonico no válido', (v) {
        if (v == null) throw InvalidArgumentException();
        return PhoneNumber(v);
      }),
    );
  }
}
