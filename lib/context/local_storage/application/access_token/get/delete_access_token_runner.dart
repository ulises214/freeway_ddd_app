import 'package:freeway_app/context/local_storage/domain/local_storage_respository.dart';
import 'package:freeway_app/context/shared/application/access_token_response.dart';
import 'package:freeway_app/context/shared/domain/exceptions/auth_exceptions.dart';

/// Make the runner for Get an accesstoken from localsotrage
class GetAccessTokenRunner {
  /// Initialize the repository to make the operation
  GetAccessTokenRunner(this._repository);
  final LocalStorageRepository _repository;

  /// Excecute the operation
  Future<AccessTokenReponse> run() async {
    final token = await _repository.getToken();
    if (token == null) throw const AuthException.invalidCredentialsException();
    return AccessTokenReponse(token);
  }
}
