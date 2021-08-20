// 🌎 Project imports:
import 'package:freeway_app/context/shared/application/void_response.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query_runner.dart';

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
