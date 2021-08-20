// 🎯 Dart imports:
import 'dart:io';

// 🌎 Project imports:
import '../../view/helpers/validators.dart';
import 'user_type.dart';

/// The data for a user of type Carrier
class CarrierData {
  /// Initialize final properties
  ///
  /// Throws an error if [socialReason] and [personType] are both null or empty
  CarrierData({
    this.personType,
    this.socialReason,
    required this.address,
    required this.businessName,
    required this.email,
    required this.opinionCompliance,
    required this.name,
  }) {
    if (personType == null && FormValidators.isNullOrEmpty(socialReason)) {
      throw Exception(
        'personType and socialReason can\'t be null or empty at same time',
      );
    }
  }

  /// Legal person
  final PersonType? personType;

  /// The carrier social reason, it can be null if personType isn't null
  final String? socialReason;

  /// The addres of the user
  final String address;

  /// Business name for this user
  final String businessName;

  /// A valid email address
  final String email;

  /// The name of the carrier
  final String name;

  /// File taken from the device to prove its veracity
  final File opinionCompliance;
}
