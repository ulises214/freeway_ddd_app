part of '_get_use_case.dart';

/// Make the runner for Get an accesstoken from localsotrage
class GetAccessTokenRunner {
  /// Initialize the repository to make the operation
  GetAccessTokenRunner(this._repository);
  final LocalStorageRepository _repository;

  /// Excecute the operation
  Future<AccessTokenReponse> run() async {
    final token = await _repository.getToken();
    if (token == null) throw const AccessTokenNotFound();
    return AccessTokenReponse(token);
  }
}
