// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/agregate_root.dart';
import 'package:freeway_app/context/shared/domain/value_object/string_value_object.dart';

/// A token for the connections
class AccessToken extends RequiredStringValueObject implements AggregateRoot {
  /// A token for the connections
  AccessToken([String? value]) : super(value);

  @override
  Map<String, dynamic> toPrimitives() {
    return {'token': value};
  }
}
