// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/dependency_injection/shared/application.dart' as _shared;
import 'package:freeway_app/app/dependency_injection/user/application.dart' as _user;
import 'package:freeway_app/context/shared/domain/domain.dart';

/// Inject all dependencies
Future<void> inject(Environment env) async {
  await DependencyContainer.i.reset();
  _shared.inject(env);
  _user.inject(env);
}
