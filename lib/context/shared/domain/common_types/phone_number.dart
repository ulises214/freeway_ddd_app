// 📦 Package imports:

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';
import 'package:fzregex/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';

/// Verify a valid phone number
class PhoneNumber extends RequiredStringValueObject {
  /// Verify a valid phone number
  PhoneNumber(String value) : super(value) {
    if (!Fzregex.hasMatch(value, FzPattern.phone)) {
      throw InvalidArgumentException('<$value> isn\'t a valid phone number');
    }
  }
}
