/// A collection with common ussd dialog messages
abstract class DialogMesagges {
  /// When the user isn't registered or passowrd are incorrect
  static const invalidCredentialsError = 'El número teléfonico o la contraseña no son válidos';

  /// When the restore passowrd email is sent
  static const restorePasswordEmailSent =
      'El correo para restablecer tu contraseña se ha enviado, no olvides revisar en tu carpeta de spam.';

  /// When the server has an error
  static const serverError = 'Ha ocurrido un error, intentelo de nuevo más tarde';

  /// When an error occurs dued to connection
  static const connectionError = 'Revise su conexión e intentelo de nuevo'
      'Revise su conexión e intentelo de nuevo';
}
