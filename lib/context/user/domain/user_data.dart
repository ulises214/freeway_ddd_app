// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/common_types/phone_number.dart';
import 'package:freeway_app/context/shared/domain/common_types/valid_password.dart';

/// The data required for login the user
class UserData {
  /// Initialize final properties
  UserData({required this.phoneNumber, required this.password});

  /// Valid phone number, without lada
  final PhoneNumber phoneNumber;

  /// Valid lada to the phoneNombres
  ///
  /// Pass from constructor
  final String lada = '+52';

  /// Valid password without encrypt
  final ValidPassword password;
}
