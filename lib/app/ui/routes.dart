import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/screens/login/screen.dart';
import 'package:freeway_app/app/ui/screens/splash/screen.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';

/// Define the routes used in the application
abstract class RoutesDefinitions {
  /// Get a list of all routes
  static final all = [login, splash, home, signup];

  /// The route to login the user
  static final login = RouteScreen('/login', (context) => const LoginScreen());

  /// The main screen for the app
  static final splash = RouteScreen('/splash', (context) => const SplashScreen());

  /// The home screen
  static final home = RouteScreen('/home', (context) => Container());

  /// The signup page
  static final signup = RouteScreen('/signup', (context) => Container());
}
