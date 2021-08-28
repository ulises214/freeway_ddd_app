import 'package:freeway_app/context/shared/domain/domain.dart';

/// When the accesstoken isn't fonund in local storage this exception is throwed
class AccessTokenNotFound extends CustomException {
  /// An access token isn't found
  const AccessTokenNotFound();
}
