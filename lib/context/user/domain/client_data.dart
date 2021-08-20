// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/common_types/email.dart';
import 'package:freeway_app/context/user/domain/business_name.dart';
import 'package:freeway_app/context/user/domain/person_type.dart';
import 'package:freeway_app/context/user/domain/user_name.dart';

/// The data for a user of type Client
class ClientData {
  /// Initialize final properies
  ClientData({
    required this.businessName,
    required this.personType,
    required this.name,
    required this.email,
  });

  /// Legal person
  final PersonType personType;

  /// Name for the person
  final UserName name;

  /// A valid email addres
  final EmailAddress email;

  /// The business name of the client
  final BusinessName businessName;
}
