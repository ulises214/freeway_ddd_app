part of '_get_use_case.dart';

/// Creates a query to delete the token from local storage
class GetAccessTokenQueryHandler extends QueryHandler<GetAccessTokenQuery, AccessTokenReponse> {
  /// Initialize the runner for the application
  GetAccessTokenQueryHandler(this._runner);
  final GetAccessTokenRunner _runner;
  @override
  Future<AccessTokenReponse> handle(GetAccessTokenQuery query) => _runner.run();

  @override
  Type suscribedTo() => GetAccessTokenQuery;
}
