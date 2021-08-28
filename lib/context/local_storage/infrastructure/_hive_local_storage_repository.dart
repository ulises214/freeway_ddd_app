// 🌎 Project imports:
import 'package:freeway_app/context/local_storage/domain/domain.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/shared/infrastructure/infrastrucutre.dart';

const _accessTokenKey = 'accessToken';

/// Implements [LocalStorageRepository] using [HiveStorage]
class HiveLocalStorageRepository extends HiveStorage implements LocalStorageRepository {
  @override
  Future<void> deleteToken() async => delete(_accessTokenKey);

  @override
  Future<AccessToken?> getToken() async {
    final storedValue = read(_accessTokenKey);
    if (storedValue == null) return null;
    return AccessToken(storedValue);
  }

  @override
  Future<void> saveToken(AccessToken token) async => store(_accessTokenKey, token.value);
}
