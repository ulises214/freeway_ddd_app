// 📦 Package imports:
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_context.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_not_registered.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_config.dart';

/// The facotry for the clients to connect the application
class GraphQLClientFactory {
  final Map<GraphQLClientContext, Client> _clients = {};

  /// Creates or return a new client
  Client createClient(
    GraphQLClientContext context,
    GraphQLConfig config,
  ) {
    try {
      return _getClient(context);
    } on GraphQLClientNotRegisteredException {
      final client = _createAndConnectClient(context, config);
      _registerClient(context, client);
      return client;
    }
  }

  Client _getClient(GraphQLClientContext context) {
    final client = _clients[context];
    if (client == null) throw GraphQLClientNotRegisteredException();
    return client;
  }

  /// Gets the client for unlogged operations
  Client getUnloggedClient() => _getClient(GraphQLClientContext.unloggedOperation);

  /// Gets the client for logged operations
  Client getLoggedClient() => _getClient(GraphQLClientContext.loggedOperation);

  Client _createAndConnectClient(
    GraphQLClientContext context,
    GraphQLConfig config,
  ) {
    final link = HttpLink(
      config.url,
      defaultHeaders: {
        if (config.authToken != null) 'Authorization': 'Bearer ${config.authToken}',
      },
    );
    final client = Client(link: link);
    return client;
  }

  void _registerClient(GraphQLClientContext context, Client client) {
    _clients[context] = client;
  }
}
