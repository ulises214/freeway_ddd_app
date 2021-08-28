part of '_login_use_case.dart';

/// Run the operation for the login
class LoginUserRunner {
  /// Initialioze the repository
  LoginUserRunner(this._repository);
  final UserRepository _repository;

  /// Excecute the query
  Future<AccessTokenReponse> run(UserData data) async {
    final token = await _repository.login(data);
    return AccessTokenReponse(token);
  }
}
