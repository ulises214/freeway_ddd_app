import 'package:freeway_app/context/shared/domain/access_token.dart';
import 'package:freeway_app/context/shared/domain/query.dart';

/// Creates a query to Save an stored access token
class SaveAccessTokenQuery extends Query {
  /// Creates a query with a accesstoekn to store in local storage
  SaveAccessTokenQuery(this.token);

  /// Token to store
  final AccessToken token;
}
