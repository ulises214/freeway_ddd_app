part of '_save_use_case.dart';

/// Make the runner for Save an accesstoken from localsotrage
class SaveAccessTokenRunner {
  /// Initialize the repository to make the operation
  SaveAccessTokenRunner(this._repository);
  final LocalStorageRepository _repository;

  /// Excecute the operation
  Future<VoidResponse> run(AccessToken token) async {
    await _repository.saveToken(token);
    return VoidResponse();
  }
}
