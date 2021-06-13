import 'travel_base.dart';

/// Temporal model class, will replaced with graphql-based models
class RecomendedTravel extends TravelBase {
  /// Create a defualt recommended travel
  RecomendedTravel({
    required this.isForPremium,
    required String origin,
    required int rating,
    required String title,
    required String uriProfileImage,
  }) : super(
          origin: origin,
          title: title,
          rating: rating,
          uriProfileImage: uriProfileImage,
        );

  /// The travel is for premium users
  final bool isForPremium;
}
