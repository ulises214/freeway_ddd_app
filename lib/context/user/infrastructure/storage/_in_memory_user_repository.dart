// 🎯 Dart imports:
import 'dart:math';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/user/domain/domain.dart';

final _userData = <UserData>[
  UserData(phoneNumber: PhoneNumber('3123398831'), password: ValidPassword('12345678')),
  UserData(phoneNumber: PhoneNumber('3123398832'), password: ValidPassword('12345679')),
  UserData(phoneNumber: PhoneNumber('3123398833'), password: ValidPassword('12345670')),
];

/// Implements the repository in memory
class InMemoryUserRepository implements UserRepository {
  @override
  Future<AccessToken> login(UserData userData) {
    try {
      _userData.firstWhere((e) => e == userData);
      return Future.value(
        AccessToken(
          'False token: Phone:[${userData.phoneNumber.value}] Password:[${userData.password.value}]',
        ),
      );
    } on StateError {
      throw const AuthException.invalidCredentialsException();
    }
  }

  @override
  Future<void> requestRestorePassword(EmailAddress email) {
    return Future.value();
  }

  @override
  Future<bool> validateToken(AccessToken token) async {
    return Random().nextBool();
  }
}
