import 'package:freeway_app/context/local_storage/domain/local_storage_respository.dart';
import 'package:freeway_app/context/shared/application/void_response.dart';
import 'package:freeway_app/context/shared/domain/access_token.dart';

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
