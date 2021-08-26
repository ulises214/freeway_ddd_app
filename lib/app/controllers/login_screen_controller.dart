import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';

/// The controller for the operations in the login screen
class LoginScreenController {
  final UserRepository _repository = DependencyContainer.i.get();
  final Logger _logger = DependencyContainer.i.get();

  /// Calls to [UserRepository] to login the user
  Future<void> login(UserData userData) async {
    try {
      final token = await _repository.login(userData);
      _logger.info(token.value);
    } catch (e) {
      _logger.errorMessage(e.toString());
    }
  }

  /// Got to signup page
  void goToSignUp() {
    return;
    DependencyContainer.i.get<AppRouter>().off(RoutesDefinitions.splash);
  }
}
