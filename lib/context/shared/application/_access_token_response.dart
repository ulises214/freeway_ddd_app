part of 'application.dart';

/// Creates the reponse for a access token
class AccessTokenReponse extends Response {
  /// Creates the reponse for a access token
  AccessTokenReponse(this.token);

  /// The token for the response
  final AccessToken token;
}
