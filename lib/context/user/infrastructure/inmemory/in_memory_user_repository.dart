// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/access_token.dart';
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

/// Implements the repository in memory
class InMemoryUserRepository implements UserRepository {
  @override
  Future<AccessToken> login(UserData userData) {
    return Future.value(AccessToken(
      'False token: Phone:[${userData.phoneNumber.value}] Password:[${userData.password.value}]',
    ));
  }

  @override
  Future<void> requestRestorePassword(EmailAddress email) {
    return Future.value();
  }
}
