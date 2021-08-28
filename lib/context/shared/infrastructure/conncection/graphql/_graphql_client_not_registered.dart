part of '_graphql_client_facotry.dart';

/// When a grapqhql client is not registered on GrapqhQLclientFacotry
class GraphQLClientNotRegisteredException extends CustomException {
  /// When a grapqhql client is not registered on GrapqhQLclientFacotry
  GraphQLClientNotRegisteredException([String? cause]) : super(cause);
}
