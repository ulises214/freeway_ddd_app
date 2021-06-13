import 'package:get/utils.dart';

typedef _NextValidator = String? Function(String value);
final _phoneRegExp =
    RegExp(r'^\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})$');

/// Helpers to validate form inputs
abstract class FormValidators {
  /// False if the given value is null or an empty string
  static bool isNullOrEmpty(String? value) =>
      value == null || value.trim().isEmpty;

  static String? _isValidPhoneNumber(String number) =>
      _phoneRegExp.hasMatch(number) ? null : 'Número teléfonico no válido';

  static String? _isValidEmail(String email) =>
      GetUtils.isEmail(email) ? null : 'Email no válido';

  static String? _isValidPassword(String password) => password.length < 8
      ? 'La contraseña debe contener al menos 8 caracteres'
      : null;

  /// A value can't be null or a empty string
  static String? isRequired(String? value, [_NextValidator? next]) {
    if (isNullOrEmpty(value)) return 'Este campo es requerido';
    if (next != null) return next(value!);
  }

  /// A value can be null or a empty string
  static String? isOptional(String? value, [_NextValidator? next]) {
    if (isNullOrEmpty(value)) return null;
    if (next != null) return next(value!);
  }

  /// The given [number] is optional and is a valid phone number
  static String? isPhoneNumberAndOptional(String? number) =>
      isOptional(number, _isValidPhoneNumber);

  /// The given [number] is required and is a valid phone number
  static String? isPhoneNumberAndRequired(String? number) =>
      isRequired(number, _isValidPhoneNumber);

  /// The given [password] is optional and a is valid password
  static String? isValidPassowordAndOptional(String? password) =>
      isOptional(password, _isValidPassword);

  /// The given [password] is required and a is valid password
  static String? isValidPassowordAndRequired(String? password) =>
      isRequired(password, _isValidPassword);

  /// The given [email] is optioanl and is a valid email addres
  static String? isEmailAnOptional(String? email) =>
      isOptional(email, _isValidEmail);

  /// The given [email] is required and is a valid email addres
  static String? isEmailAndRequired(String? email) =>
      isRequired(email, _isValidEmail);
}
