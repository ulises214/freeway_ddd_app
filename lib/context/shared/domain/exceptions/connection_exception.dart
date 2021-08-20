// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';

/// Creates an expection when an erro is caused doued to connection
class ConnectionException extends CustomException {
  /// Creates an expection when an erro is caused doued to connection
  ConnectionException([String? cause]) : super(cause);
}
