// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// An class to implement for the named routes
class RouteScreen {
  /// An class to implement for the named routes
  const RouteScreen(this.route, this.screen);

  /// The route name
  final String route;

  /// The widget ot render
  final WidgetBuilder screen;

  ///Export map to use in mateiral app
  MapEntry<String, WidgetBuilder> toRouteMap() {
    return MapEntry(route, screen);
  }
}
