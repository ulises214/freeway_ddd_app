// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/shared/application.dart' as _shared;
import 'package:freeway_app/app/dependency_injection/user/application.dart' as _user;
import 'package:freeway_app/context/shared/domain/env.dart';

/// Inject all dependencies
void inject(Environment env) {
  _shared.inject(env);
  _user.inject(env);
}
