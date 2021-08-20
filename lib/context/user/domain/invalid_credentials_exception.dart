// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';

/// When the user hasn't a valid Phone and Password
class InvalidCredentialsException extends CustomException {
  /// When the user hasn't a valid Phone and Password
  InvalidCredentialsException(String? cause) : super(cause);
}
