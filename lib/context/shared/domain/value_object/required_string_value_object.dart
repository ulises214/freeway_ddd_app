// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/invalid_argument_exception.dart';
import 'package:freeway_app/context/shared/domain/value_object/string_value_object.dart';

/// A String class that can't get a empty value
class RequiredStringValueObject extends StringValueObject {
  /// Value can't be empty
  RequiredStringValueObject(String value) : super(value) {
    if (value.trim().isEmpty) {
      throw InvalidArgumentException('The value can\'t be empty');
    }
  }
}
