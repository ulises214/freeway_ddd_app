import 'user_type.dart';

/// The data for a user of type Client
class ClientData {
  /// Initialize final properies
  ClientData(
      {required this.personType, required this.name, required this.email});

  /// Legal person
  final PersonType personType;

  /// Name for the person
  final String name;

  /// A valid email addres
  final String email;
}
