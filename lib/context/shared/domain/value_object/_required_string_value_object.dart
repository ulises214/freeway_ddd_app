part of 'string_value_object.dart';

/// A String class that can't get a empty value
class RequiredStringValueObject extends StringValueObject {
  /// Value can't be empty
  RequiredStringValueObject([String? value]) : super(value) {
    if (value == null || value.trim().isEmpty) {
      throw InvalidArgumentException('The value can\'t be empty');
    }
  }
  @override
  String get value => _value!;
}
