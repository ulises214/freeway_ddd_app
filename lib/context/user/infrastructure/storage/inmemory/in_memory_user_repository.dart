// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/access_token.dart';
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/shared/domain/common_types/phone_number.dart';
import 'package:freeway_app/context/shared/domain/common_types/valid_password.dart';
import 'package:freeway_app/context/shared/domain/exceptions/auth_exceptions.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

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
}
