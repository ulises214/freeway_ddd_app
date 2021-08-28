// 🌎 Project imports:
import 'package:freeway_app/app/controllers/controller.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/context/local_storage/application/access_token/get/_get_use_case.dart';
import 'package:freeway_app/context/shared/application/application.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/user/application/validate_token/_validate_token_use_case.dart';

/// Controller for Splash page
class SplashScreenController {
  final AppRouter _router = DependencyContainer.i.get();
  final QueryBus _queryBus = DependencyContainer.i.get();

  /// Verify if stored token is valid and login ro send to Login Page
  Future<void> requestUserInfo() async {
    try {
      final response = await _queryBus.ask<AccessTokenReponse>(GetAccessTokenQuery());
      final tokenIsValid = await _queryBus.ask<BooleanResponse>(ValidateTokenQuery(response.token));
      if (tokenIsValid.value) {
        _router.offAll(RoutesDefinitions.home);
      } else {
        _router.offAll(RoutesDefinitions.login);
      }
    } catch (e) {
      _router.offAll(RoutesDefinitions.login);
    }
  }
}
