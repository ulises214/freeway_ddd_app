part of '_restore_password_use_case.dart';

/// Run the restore passowrd operation
class RestoreUserPasswordRunner {
  /// Run the restore passowrd operation
  RestoreUserPasswordRunner(this._repository);
  final UserRepository _repository;

  /// Run the operation
  Future<VoidResponse> run(EmailAddress email) async {
    await _repository.requestRestorePassword(email);
    return VoidResponse();
  }
}
