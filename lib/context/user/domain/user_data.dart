// 🌎 Project imports:
import 'package:flutter/cupertino.dart';
import 'package:freeway_app/context/shared/domain/common_types/phone_number.dart';
import 'package:freeway_app/context/shared/domain/common_types/valid_password.dart';
import 'package:freeway_app/context/shared/domain/value_object/string_value_object.dart';

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
