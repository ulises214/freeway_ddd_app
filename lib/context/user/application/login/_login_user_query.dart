part of '_login_use_case.dart';

/// Creates the query for the login of an user
class LoginUserQuery implements Query {
  /// Initialize the information required for the login
  LoginUserQuery(this.userData);

  /// The info required for the login
  final UserData userData;
}
