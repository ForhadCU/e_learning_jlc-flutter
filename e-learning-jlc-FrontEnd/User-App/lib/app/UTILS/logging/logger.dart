import 'package:logger/logger.dart';

class TLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize the log levels based on your needs
    level: Level.debug,
  );
  static final Logger _loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
    // Customize the log levels based on your needs
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void debugWithNoStack(String message) {
    _loggerNoStack.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void infoWithNoStack(String message) {
    _loggerNoStack.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void warningWithNoStack(String message) {
    _loggerNoStack.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
