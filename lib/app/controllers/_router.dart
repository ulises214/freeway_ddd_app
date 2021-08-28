import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material_dialog show showDialog;

import 'package:freeway_app/app/ui/shared/shared.dart';

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

  /// Close the current screen
  void pop() {
    key.currentState?.pop();
  }

  /// Show a [Widget] as dialog
  void showDialog(Widget dialog) {
    if (key.currentContext != null) {
      material_dialog.showDialog(context: key.currentContext!, builder: (_) => dialog);
    }
  }
}
