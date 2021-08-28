part of '_validate_token_use_case.dart';

/// Creates the query to execute the operation
class ValidateTokenQuery extends Query {
  /// Initialize the token for the operation
  ValidateTokenQuery(this.token);

  /// The token to validate
  final AccessToken token;
}
