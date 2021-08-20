/// Creates a basic exception
abstract class CustomException implements Exception {
  /// Creates a basic exception with message
  CustomException(this.cause);

  /// The caouse of the exception
  final String? cause;
}
