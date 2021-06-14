/// A logger with colored ouput
class ColoredLog {
  /// Pint [info] in blue color
  static void printInfo(dynamic info) {
    print('\x1B[34m$info\x1B[0m');
  }

  /// Pint [error] in red color
  static void printError(dynamic error) {
    print('\x1B[31m$error\x1B[0m');
  }

  /// Pint [wrning] in yellow color
  static void printWarning(dynamic warning) {
    print('\x1B[33m$warning\x1B[0m');
  }
}
