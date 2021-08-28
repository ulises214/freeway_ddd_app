part of '_restore_password_use_case.dart';

/// A query to sned an email to restore password
class RestoreUserPasswordQuery extends Query {
  /// Iniaitialize the email address to send the restore email
  RestoreUserPasswordQuery(this.email);

  /// The email to send the restore password email
  final EmailAddress email;
}
