import 'package:freeway_app/context/local_storage/application/access_token/delete/delete_access_token_query.dart';
import 'package:freeway_app/context/local_storage/application/access_token/get/delete_access_token_runner.dart';
import 'package:freeway_app/context/local_storage/application/access_token/get/get_access_token_query.dart';
import 'package:freeway_app/context/shared/application/access_token_response.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';

/// Creates a query to delete the token from local storage
class GetAccessTokenQueryHandler extends QueryHandler<GetAccessTokenQuery, AccessTokenReponse> {
  /// Initialize the runner for the application
  GetAccessTokenQueryHandler(this._runner);
  final GetAccessTokenRunner _runner;
  @override
  Future<AccessTokenReponse> handle(GetAccessTokenQuery query) => _runner.run();

  @override
  Type suscribedTo() => DeleteAccessTokenQuery;
}
