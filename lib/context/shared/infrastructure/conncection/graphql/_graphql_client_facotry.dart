// 📦 Package imports:
import 'package:ferry/ferry.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:gql_http_link/gql_http_link.dart';
part '_graphql_client_context.dart';
part '_graphql_client_not_registered.dart';
part '_graphql_config.dart';

/// The facotry for the clients to connect the application
class GraphQLClientFactory {
  /// Initialize the endpoint for the connections
  GraphQLClientFactory(this._endpoint);
  final Map<GraphQLClientContext, Client> _clients = {};

  final String _endpoint;
  AccessToken? _authToken;

  Client _createClient(GraphQLClientContext context, GraphQLConfig config) {
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

  /// Change the autorization token
  set autToken(AccessToken token) => _authToken = token;

  /// Gets the client for unlogged operations
  Client getUnloggedClient() => _createClient(
        GraphQLClientContext.unloggedOperation,
        GraphQLConfig(_endpoint),
      );

  /// Gets the client for logged operations
  Client getLoggedClient() => _createClient(
        GraphQLClientContext.loggedOperation,
        GraphQLConfig(_endpoint, _authToken),
      );

  Client _createAndConnectClient(
    GraphQLClientContext context,
    GraphQLConfig config,
  ) {
    final link = HttpLink(
      config.url,
      defaultHeaders: {
        if (config.authToken != null) 'Authorization': 'Bearer ${config.authToken!.value}',
      },
    );
    final client = Client(link: link);
    return client;
  }

  void _registerClient(GraphQLClientContext context, Client client) {
    _clients[context] = client;
  }
}
