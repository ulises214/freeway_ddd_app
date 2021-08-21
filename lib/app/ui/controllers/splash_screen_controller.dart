import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/ui/shared/router.dart';

/// Controller for Splash page
class SplashScreenController {
  final _router = DependencyContainer.i.get<AppRouter>();

  /// Verify if stored token is valid and login ro send to Login Page
  Future<void> requestUserInfo() async {
    // * Request user data and verify if is login in device
    // * Await to smoot transition
    await Future.delayed(const Duration(seconds: 10));
    // _router.offAll(RoutesDefinitions.login);
  }
}
