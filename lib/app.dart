// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:freeway_app/graphq_requests/user/user_requests.dart';
import 'package:freeway_app/router.dart';
import 'package:freeway_app/view/widgets/dalogs.dart/dialogs_manager.dart';
import 'create_graphql_client.dart';
import 'view/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light, //bottom bar icons
    ),
  );
  _injectDependencies();
  runApp(const App());
}

void _injectDependencies() {
  Get
    ..putAsync(createGraphqlClient)
    ..lazyPut(() => FreeWayRouter())
    ..lazyPut(() => DialogsManager())
    ..lazyPut(() => UserRequestsBuilder());
}
