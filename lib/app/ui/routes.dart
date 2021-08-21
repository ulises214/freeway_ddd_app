import 'package:freeway_app/app/ui/screens/login/screen.dart';
import 'package:freeway_app/app/ui/screens/splash/screen.dart';
import 'package:freeway_app/app/ui/shared/route_screen.dart';

/// Define the routes used in the application
abstract class RoutesDefinitions {
  /// Get a list of all routes
  static final all = [login, splash];

  /// The route to login the user
  static final login = RouteScreen('/login', (context) => const LoginScreen());

  /// The main screen for the app
  static final splash = RouteScreen('/splash', (context) => const SplashScreen());
}
