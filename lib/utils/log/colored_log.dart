/// A logger with colored ouput
class ColoredLog {
  /// Pint [info] in blue color
  static void printInfo(dynamic info) {
    // ignore: avoid_print
    print('\x1B[34m$info\x1B[0m');
  }

  /// Pint [error] in red color
  static void printError(dynamic error) {
    // ignore: avoid_print
    print('\x1B[31m$error\x1B[0m');
  }

  /// Pint [warning] in yellow color
  static void printWarning(dynamic warning) {
    // ignore: avoid_print
    print('\x1B[33m$warning\x1B[0m');
  }
}
