// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/query.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';

/// Creates the query for the login of an user
class LoginUserQuery implements Query {
  /// Initialize the information required for the login
  LoginUserQuery(this.userData);

  /// The info required for the login
  final UserData userData;
}
