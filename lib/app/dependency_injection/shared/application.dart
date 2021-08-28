// 🌎 Project imports:
import 'package:freeway_app/app/controllers/dialog_manager.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/shared/infrastructure/infrastrucutre.dart';

/// Inject shared dependencies
void inject(Environment env) {
  DependencyContainer.i
    ..put<Logger>(() => ConsoleLogger())
    ..put<AppRouter>(() => AppRouter())
    ..put<DialogManager>(() => DialogManager())
    ..put<QueryBus>(() => InMemoryQueryBus(QueryHandlersInformation([])));
}
