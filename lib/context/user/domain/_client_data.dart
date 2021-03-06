part of 'domain.dart';

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
