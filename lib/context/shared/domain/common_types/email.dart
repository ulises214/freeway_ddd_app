// 📦 Package imports:
import 'package:fzregex/utils/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';

/// Creates and verify a valid email address
class EmailAddress extends RequiredStringValueObject {
  /// The value can't be empty and is a valid email
  EmailAddress(String value) : super(value) {
    if (!Fzregex.hasMatch(value, FzPattern.email)) {
      throw InvalidArgumentException('<$value> isn\'t a valid email address');
    }
  }
}
