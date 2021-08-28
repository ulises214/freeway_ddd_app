part of '_delete_use_case.dart';

/// Creates a query to delete the token from local storage
class DeleteAccessTokenQueryHandler extends QueryHandler<DeleteAccessTokenQuery, VoidResponse> {
  /// Initialize the runner for the application
  DeleteAccessTokenQueryHandler(this._runner);
  final DeleteAccessTokenRunner _runner;
  @override
  Future<VoidResponse> handle(DeleteAccessTokenQuery query) => _runner.run();

  @override
  Type suscribedTo() => DeleteAccessTokenQuery;
}
