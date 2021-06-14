import 'package:ferry/ferry.dart';
import 'package:get/get.dart';
import 'package:gql_http_link/gql_http_link.dart';

import 'utils/log/colored_log.dart';

/// Create/Recreate the graphql client with optional oken
Future<void> createGraphqlClient([String? token]) async {
  // ignore: todo
  // TODO change server link
  final link = HttpLink(
    'http://192.168.1.68:3000/graphql',
    defaultHeaders: {
      if (token != null) 'Authorization': 'Bearer $token',
    },
  );
  final client = Client(link: link);
  ColoredLog.printInfo(client.link.toString());
  await Get.delete<Client>();
  Get.put(client, permanent: true);
}
