part of '_graphql_client_facotry.dart';

/// Gets the configuration for the connection to a grapqhl client
class GraphQLConfig {
  /// Initialize the atribbutes for the connection
  GraphQLConfig(this.url, [this.authToken]);

  /// The url to connect the grapqhl client
  final String url;

  /// If exits, the bearer auth token
  final AccessToken? authToken;
}
