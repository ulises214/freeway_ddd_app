part of '_login_use_case.dart';

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
