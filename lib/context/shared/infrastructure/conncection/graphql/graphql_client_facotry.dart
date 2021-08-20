// 📦 Package imports:
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_context.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_not_registered.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_config.dart';

/// The facotry for the clients to connect the application
class GraphQLClientFactory {
  static final Map<GraphQLClientContext, Client> _clients = {};

  /// Creates or return a new client
  static Client createClient(
    GraphQLClientContext context,
    GraphQLConfig config,
  ) {
    try {
      return GraphQLClientFactory._getClient(context);
    } on GraphQLClientNotRegisteredException {
      final client = GraphQLClientFactory._createAndConnectClient(context, config);
      GraphQLClientFactory._registerClient(context, client);
      return client;
    }
  }

  static Client _getClient(GraphQLClientContext context) {
    final client = GraphQLClientFactory._clients[context];
    if (client == null) throw GraphQLClientNotRegisteredException();
    return client;
  }

  /// Gets the client for unlogged operations
  static Client getUnloggedClient() => _getClient(GraphQLClientContext.unloggedOperation);

  /// Gets the client for logged operations
  static Client getLoggedClient() => _getClient(GraphQLClientContext.loggedOperation);

  static Client _createAndConnectClient(
    GraphQLClientContext context,
    GraphQLConfig config,
  ) {
    final link = HttpLink(
      'http://192.168.1.69:3000/graphql',
      defaultHeaders: {
        if (config.authToken != null) 'Authorization': 'Bearer ${config.authToken}',
      },
    );
    final client = Client(link: link);
    return client;
  }

  static void _registerClient(GraphQLClientContext context, Client client) {
    GraphQLClientFactory._clients[context] = client;
  }
}
