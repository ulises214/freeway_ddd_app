// 🌎 Project imports:
import 'package:freeway_app/model/travel/travel_base.dart';

/// Travel with the count of reviews
/// Temporal model class, will replaced with graphql-based models
class SimpleTravel extends TravelBase {
  /// Create a default simple travel
  SimpleTravel({
    required this.reviewsCount,
    required String origin,
    required int rating,
    required String title,
    required String uriProfileImage,
  }) : super(
          origin: origin,
          rating: rating,
          title: title,
          uriProfileImage: uriProfileImage,
        );

  /// Count of reviews for this travel
  final int reviewsCount;
}
