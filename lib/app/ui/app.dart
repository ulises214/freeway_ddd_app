// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';

/// The main entry point for the application
class FreeWayApp extends StatelessWidget {
  /// Creates the mate app as entry point
  const FreeWayApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: DependencyContainer.i.getOrPut(() => AppRouter()).key,
      theme: FreeWayTheme.theme,
      title: 'FreeWay',
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{}..addEntries(
          RoutesDefinitions.all.map((e) => e.toRouteMap()),
        ),
    );
  }
}
