import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as materialDialog show showDialog;

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

  /// Go to a new Screen
  void off(RouteScreen screen) {
    key.currentState?.pushNamed(screen.route);
  }

  /// Show a [Widget] as dialog
  void showDialog(Widget dialog) {
    if (key.currentContext != null) {
      materialDialog.showDialog(context: key.currentContext!, builder: (_) => dialog);
    }
  }
}
