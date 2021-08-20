// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';

/// Creates a valid password
class ValidPassword extends RequiredStringValueObject {
  /// Verify the passowrd
  ValidPassword(String value) : super(value) {
    if (value.length < 8) {
      throw InvalidArgumentException('La contraseña debe contener al menos 8 caracteres');
    }
  }
}
