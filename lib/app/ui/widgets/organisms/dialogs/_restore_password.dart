part of '_dialogs.dart';

/// Show a [BasicDialog] with a input to sen a restore password email
class RestorePasswordDialog extends StatelessWidget {
  /// Show a [BasicDialog] with a input to sen a restore password email
  const RestorePasswordDialog({Key? key, required this.onSubmit}) : super(key: key);

  /// When the editing is complette send the email
  final void Function(EmailAddress email) onSubmit;
  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: const StyledText(
        'Reestablecer contraseña',
        textProperties: TextProperties(color: FreeWayColors.officialBlue1, type: TextType.h6),
      ),
      content: _Input(
        onSubmit: onSubmit,
      ),
    );
  }
}

class _Input extends StatefulWidget {
  const _Input({Key? key, required this.onSubmit}) : super(key: key);
  final void Function(EmailAddress email) onSubmit;

  @override
  __InputState createState() => __InputState();
}

class __InputState extends State<_Input> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (_formKey.currentState?.validate() == true) {
      widget.onSubmit(EmailAddress(_emailController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText(
          'Ingresa el correo electrónico con el que te inscribiste y te enviaremos instrucciones para restablecer tu contraseña.',
        ),
        const SizedBox(height: 20),
        Form(
          key: _formKey,
          child: CleanTextFormInput(
            label: 'Correo electronico',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const InputIcon(FontAwesomeIcons.solidEnvelope),
            validator: TextFromValidator('El email no es valido', (v) => EmailAddress(v)),
          ),
        ),
        const SizedBox(height: 20),
        RoundedButton.gradient(
          'Reestablecer contraseña',
          size: RoundedButtonSize.long,
          onPressed: _handleSubmit,
        ),
        const SizedBox(height: 10),
        RoundedButton.gray(
          'Cancelar',
          size: RoundedButtonSize.long,
          onPressed: Navigator.of(context).pop,
        ),
      ],
    );
  }
}
