import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freeway_app/utils/log/colored_log.dart';
import 'package:get/get.dart';
import 'package:gql_http_link/gql_http_link.dart';

import 'create_graphql_client.dart';
import 'view/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light, //bottom bar icons
    ),
  );
<<<<<<< HEAD
  createGraphqlClient();
=======
  _loadClient();
>>>>>>> 18193d5 (Created graphql client)
  runApp(const App());
}

void _loadClient() {
  // ignore: todo
  // TODO change server link
  final link = HttpLink('http://192.168.1.68:3000/graphql');
  final client = Client(link: link);
  ColoredLog.printInfo(client.link.toString());
  Get.put(client);
}
