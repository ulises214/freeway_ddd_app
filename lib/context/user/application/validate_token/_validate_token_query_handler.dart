part of '_validate_token_use_case.dart';

/// Manage the [ValidateTokenQuery]
class ValidateTokenQueryHandler extends QueryHandler<ValidateTokenQuery, BooleanResponse> {
  /// Use an runner to handle the opperation
  ValidateTokenQueryHandler(this._runner);
  final ValidateTokenRunner _runner;
  @override
  Future<BooleanResponse> handle(ValidateTokenQuery query) => _runner.run(query.token);

  @override
  Type suscribedTo() => ValidateTokenQuery;
}
