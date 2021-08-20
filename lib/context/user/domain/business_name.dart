// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';

/// A valida business name
class BusinessName extends RequiredStringValueObject {
  /// A valid business name that can't be empty
  BusinessName(String value) : super(value);
}
