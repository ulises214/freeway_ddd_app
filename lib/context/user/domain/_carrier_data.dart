part of 'domain.dart';

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
    if (personType == null && socialReason == null) {
      throw InvalidArgumentException(
        'personType and socialReason can\'t be null or empty at same time',
      );
    }
  }

  /// Legal person
  final PersonType? personType;

  /// The carrier social reason, it can be null if personType isn't null
  final UserSocialReson? socialReason;

  /// The addres of the user
  final Address address;

  /// Business name for this user
  final BusinessName businessName;

  /// A valid email address
  final EmailAddress email;

  /// The name of the carrier
  final UserName name;

  /// File taken from the device to prove its veracity
  final File opinionCompliance;
}
