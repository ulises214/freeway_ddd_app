part of 'domain.dart';

/// A valida business name
class BusinessName extends RequiredStringValueObject {
  /// A valid business name that can't be empty
  BusinessName([String? value]) : super(value);
}
