// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/value_object/required_string_value_object.dart';

/// A valid addres
class Address extends RequiredStringValueObject {
  /// Creates a valid address
  Address(String value) : super(value);
}
