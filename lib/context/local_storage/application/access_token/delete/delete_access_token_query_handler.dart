import 'package:freeway_app/context/local_storage/application/access_token/delete/delete_access_token_query.dart';
import 'package:freeway_app/context/local_storage/application/access_token/delete/delete_access_token_runner.dart';
import 'package:freeway_app/context/shared/application/void_response.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';

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
