// 🌎 Project imports:
import 'package:freeway_app/context/shared/application/access_token_response.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/user/application/login/login_user_query.dart';
import 'package:freeway_app/context/user/application/login/login_user_runner.dart';

/// Handle the query for the login user
class LoginUserQueryHandler implements QueryHandler<LoginUserQuery, AccessTokenReponse> {
  /// Initialize the query runner
  LoginUserQueryHandler(this._loginUserRunner);
  final LoginUserRunner _loginUserRunner;

  @override
  Future<AccessTokenReponse> handle(LoginUserQuery query) {
    return _loginUserRunner.run(query.userData);
  }

  @override
  Type suscribedTo() {
    return LoginUserQuery;
  }
}
