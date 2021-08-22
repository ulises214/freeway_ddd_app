import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/ui/shared/router.dart';

/// The controller for the operations in the login screen
class LoginScreenController {
  /// Got to signup page
  void goToSignUp() {
    return;
    DependencyContainer.i.get<AppRouter>().off(RoutesDefinitions.splash);
  }
}
