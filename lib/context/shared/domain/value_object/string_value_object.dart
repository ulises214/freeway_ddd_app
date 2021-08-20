/// A simplified version of string
abstract class StringValueObject {
  /// Initialize the value
  StringValueObject(this.value);

  /// The value contained in the class
  final String value;

  /// Obverrides the defualt toString
  @override
  String toString() => value;
}
