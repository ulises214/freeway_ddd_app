part of 'domain.dart';

/// A token for the connections
class AccessToken extends RequiredStringValueObject implements AggregateRoot {
  /// A token for the connections
  AccessToken([String? value]) : super(value);

  @override
  Map<String, dynamic> toPrimitives() {
    return {'token': value};
  }
}
