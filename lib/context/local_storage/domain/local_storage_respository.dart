import 'package:freeway_app/context/shared/domain/domain.dart';

/// An interface to store/read data from the device
abstract class LocalStorageRepository {
  /// Read the token ffrom the device
  Future<AccessToken?> getToken();

  /// Save a token from the device
  Future<void> saveToken(AccessToken token);

  /// Delete the stored token
  Future<void> deleteToken();
}
