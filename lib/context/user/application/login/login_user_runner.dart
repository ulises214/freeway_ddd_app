// 🌎 Project imports:
import 'package:freeway_app/context/shared/application/access_token_response.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

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
