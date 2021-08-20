// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';

/// Creates a specific exception for invalid argument
class InvalidArgumentException extends CustomException {
  /// Send message to super
  InvalidArgumentException([String? message]) : super(message);
}
