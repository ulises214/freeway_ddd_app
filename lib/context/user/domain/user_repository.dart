// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';

/// Creates a repository for the user operations
abstract class UserRepository {
  /// Login the user
  Future<AccessToken> login(UserData userData);

  /// Send an email to restore the passowrd
  Future<void> requestRestorePassword(EmailAddress email);
}
