import 'package:freeway_app/context/local_storage/application/access_token/save/save_access_token_query.dart';
import 'package:freeway_app/context/local_storage/application/access_token/save/save_access_token_runner.dart';
import 'package:freeway_app/context/shared/application/void_response.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';

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
