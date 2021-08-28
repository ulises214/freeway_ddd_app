import 'package:freeway_app/context/shared/domain/domain.dart';

/// A text form validator based on exception caused by [StringValueObject]
class TextFromValidator<T extends StringValueObject> {
  /// Creates the error message when [StringValueObject] throws an Excpetion
  const TextFromValidator(this.errorMessage, this.builder);

  /// The message when te [validate] fails
  final String errorMessage;

  /// The function to call everytime than the [validate] is called
  final T Function(String? v) builder;

  /// The validation function to pass to the inputs
  String? validate(String? v) {
    try {
      builder(v);
      return null;
    } on InvalidArgumentException {
      return errorMessage;
    }
  }
}
