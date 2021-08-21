import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/route_screen.dart';

/// The router used in the application
class AppRouter {
  final _navigatorKey = GlobalKey<NavigatorState>();

  /// The key used for the router
  GlobalKey<NavigatorState> get key => _navigatorKey;

  /// Go to a named route and remove previous routes
  void offAll(RouteScreen screen) {
    key.currentState?.pushNamedAndRemoveUntil(screen.route, (route) => false);
  }
}
