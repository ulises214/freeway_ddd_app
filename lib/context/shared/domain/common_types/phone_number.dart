// 📦 Package imports:
import 'package:get/utils.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';

/// Verify a valid phone number
class PhoneNumber extends RequiredStringValueObject {
  /// Verify a valid phone number
  PhoneNumber(String value) : super(value) {
    if (!GetUtils.isPhoneNumber(value)) {
      throw InvalidArgumentException('<$value> isn\'t a valid phone number');
    }
  }
}
