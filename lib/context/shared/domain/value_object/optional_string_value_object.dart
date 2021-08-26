// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/value_object/string_value_object.dart';

/// A String class that can get a empty value
class OptionalStringValueObject extends StringValueObject {
  /// Value can't be empty
  OptionalStringValueObject([String? value]) : super(value ?? '');
}
