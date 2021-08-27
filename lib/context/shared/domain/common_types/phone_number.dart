// 📦 Package imports:

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/string_value_object.dart';
import 'package:fzregex/fzregex.dart';

// TODO change regex
const Pattern _pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

/// Verify a valid phone number
class PhoneNumber extends RequiredStringValueObject {
  /// Verify a valid phone number
  PhoneNumber([String? value]) : super(value) {
    if (!Fzregex.hasMatch(this.value, _pattern)) {
      throw InvalidArgumentException('<$value> isn\'t a valid phone number');
    }
  }
}
