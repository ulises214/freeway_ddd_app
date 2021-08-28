part of '_validate_token_use_case.dart';

/// run the validate token operation
class ValidateTokenRunner {
  /// Get the user repository to run the operation
  ValidateTokenRunner(this._repository);
  final UserRepository _repository;

  /// Excecute the operation
  Future<BooleanResponse> run(AccessToken token) async {
    try {
      if (await _repository.validateToken(token)) return BooleanResponse(true);
      return BooleanResponse(false);
    } catch (e) {
      return BooleanResponse(false);
    }
  }
}
