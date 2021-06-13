/// The data required for login the user
class UserData {
  /// Initialize final properties
  UserData({
    required this.phoneNumber,
    required this.password,
  });

  /// Valid phone number, without lada
  final String phoneNumber;

  /// Valid lada to the phoneNombres
  ///
  /// Pass from constructor
  final String lada = '+52';

  /// Valid password without encrypt
  final String password;
}
