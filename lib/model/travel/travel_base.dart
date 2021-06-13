/// Temporal model class, will replaced with graphql-based models
abstract class TravelBase {
  /// Create the shared properties for all travels
  TravelBase({
    required this.title,
    required this.origin,
    required this.rating,
    required this.uriProfileImage,
  }) : assert(rating >= 0 && rating <= 5, 'Invalid rating ');

  /// The name for this travel
  final String title;

  /// The name of the origin of this travel
  final String origin;

  /// The rating for this travel, in a range of 0-5, including
  final int rating;

  /// Profile image url
  final String uriProfileImage;
}
