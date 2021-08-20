// 🌎 Project imports:
import 'package:freeway_app/context/shared/application/void_response.dart';
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

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
