part of '_delete_use_case.dart';

/// Make the runner for delete an accesstoken from localsotrage
class DeleteAccessTokenRunner {
  /// Initialize the repository to make the operation
  DeleteAccessTokenRunner(this._repository);
  final LocalStorageRepository _repository;

  /// Excecute the operation
  Future<VoidResponse> run() async {
    await _repository.deleteToken();
    return VoidResponse();
  }
}
