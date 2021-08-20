// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/exceptions/custom_exception.dart';

/// An interface to store the logs for the application
abstract class Logger {
  /// Debbuging messages
  void debug(String message);

  /// Error based on a string
  void erroMessage(String message);

  /// Error based on a [Exception]
  void error(CustomException error);

  /// Info messages
  void info(String message);
}
