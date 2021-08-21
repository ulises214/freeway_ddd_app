
// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/application/console_logger.dart';
import 'package:freeway_app/context/shared/domain/env.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';
import 'package:freeway_app/context/shared/domain/query_bus.dart';
import 'package:freeway_app/context/shared/infrastructure/query_bus/in_memory_query_bus.dart';
import 'package:freeway_app/context/shared/infrastructure/query_bus/query_handlers_information.dart';

/// Inject shared dependencies
void inject(Environment env) {
  DependencyContainer.i
    ..put<Logger>(() => ConsoleLogger())
    ..put<QueryHandlersInformation>(() => QueryHandlersInformation([]))
    ..put<QueryBus>(() {
      final queryInfoHandler = DependencyContainer.i.get<QueryHandlersInformation>();
      return InMemoryQueryBus(queryInfoHandler);
    });
}
