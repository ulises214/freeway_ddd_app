import 'package:freeway_app/app/dependency_injection/shared/application.dart' as _shared;
import 'package:freeway_app/app/dependency_injection/user/application.dart' as _user;

/// Inject all dependencies
void inject() {
  _shared.inject();
  _user.inject();
}
