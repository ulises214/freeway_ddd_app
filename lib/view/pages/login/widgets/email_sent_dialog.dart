import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

const _dialogText = 'El correo para restablecer tu contraseña se ha enviado, '
    'no olvides revisar en tu carpeta de spam.';

/// Dialog to confirma that a restore password email was sent
class EmailSentDialog extends StatelessWidget {
  /// Createas a dialog to confirm an email was sent
  const EmailSentDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ConfirmationDialog(
      content: _dialogText,
    );
  }
}
