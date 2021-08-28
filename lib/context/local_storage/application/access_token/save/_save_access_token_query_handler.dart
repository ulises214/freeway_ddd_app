part of '_save_use_case.dart';

/// Creates a query to Save the token from local storage
class SaveAccessTokenQueryHandler extends QueryHandler<SaveAccessTokenQuery, VoidResponse> {
  /// Initialize the runner for the application
  SaveAccessTokenQueryHandler(this._runner);
  final SaveAccessTokenRunner _runner;
  @override
  Future<VoidResponse> handle(SaveAccessTokenQuery query) => _runner.run(query.token);

  @override
  Type suscribedTo() => SaveAccessTokenQuery;
}
