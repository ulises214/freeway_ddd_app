part of 'domain.dart';

/// Creates a repository for the user operations
abstract class UserRepository {
  /// Login the user
  Future<AccessToken> login(UserData userData);

  /// Send an email to restore the passowrd
  Future<void> requestRestorePassword(EmailAddress email);

  /// Verify with the server if a token is valid
  Future<bool> validateToken(AccessToken token);
}
