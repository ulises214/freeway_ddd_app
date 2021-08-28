import 'package:freeway_app/context/local_storage/domain/local_storage_respository.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';

AccessToken? _token;

/// Creates a repository in memory
class InMemoryLocalStorageRepository implements LocalStorageRepository {
  @override
  Future<void> deleteToken() async => _token = null;

  @override
  Future<AccessToken?> getToken() async => _token;

  @override
  Future<void> saveToken(AccessToken token) async => _token = token;
}
