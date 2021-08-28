part of '_restore_password_use_case.dart';

/// Handle the restore password query
class RestoreUserPasswordQueryHandler
    implements QueryHandler<RestoreUserPasswordQuery, VoidResponse> {
  /// Creates a handler to makle the restore of a passowrd
  RestoreUserPasswordQueryHandler(this._runner);
  final RestoreUserPasswordRunner _runner;
  @override
  Future<VoidResponse> handle(RestoreUserPasswordQuery query) {
    return _runner.run(query.email);
  }

  @override
  Type suscribedTo() {
    return RestoreUserPasswordQuery;
  }
}
