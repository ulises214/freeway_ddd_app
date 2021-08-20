// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/shared/domain/query.dart';

/// A query to sned an email to restore password
class RestoreUserPasswordQuery extends Query {
  /// Iniaitialize the email address to send the restore email
  RestoreUserPasswordQuery(this.email);

  /// The email to send the restore password email
  final EmailAddress email;
}
