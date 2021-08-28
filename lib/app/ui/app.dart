// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/controllers/controller.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';

/// The main entry point for the application
class FreeWayApp extends StatefulWidget {
  /// Creates the mate app as entry point
  const FreeWayApp({Key? key}) : super(key: key);

  @override
  _FreeWayAppState createState() => _FreeWayAppState();
}

class _FreeWayAppState extends State<FreeWayApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: DependencyContainer.i.get<AppRouter>().key,
      theme: FreeWayTheme.theme,
      title: 'FreeWay',
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{}..addEntries(
          RoutesDefinitions.all.map((e) => e.toRouteMap()),
        ),
    );
  }
}
