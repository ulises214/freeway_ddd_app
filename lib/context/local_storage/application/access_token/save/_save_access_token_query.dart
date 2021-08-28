part of '_save_use_case.dart';

/// Creates a query to Save an stored access token
class SaveAccessTokenQuery extends Query {
  /// Creates a query with a accesstoekn to store in local storage
  SaveAccessTokenQuery(this.token);

  /// Token to store
  final AccessToken token;
}
