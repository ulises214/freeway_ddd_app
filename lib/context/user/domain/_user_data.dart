part of 'domain.dart';

/// The data required for login the user
class UserData {
  /// Initialize final properties
  UserData({required this.phoneNumber, required this.password});

  /// Valid phone number, without lada
  final PhoneNumber phoneNumber;

  /// Valid lada to the phoneNombres
  ///
  /// Pass from constructor
  final RequiredStringValueObject lada = RequiredStringValueObject('+52');

  /// Valid password without encrypt
  final ValidPassword password;

  @override
  bool operator ==(other) =>
      other is UserData &&
      password.equals(other.password) &&
      phoneNumber.equals(other.phoneNumber) &&
      lada.equals(other.lada);

  @override
  int get hashCode => hashValues(lada.hashCode, phoneNumber.hashCode, password.hashCode);
}
