// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/application/console_logger.dart';
import 'package:freeway_app/context/shared/domain/env.dart';
import 'package:freeway_app/context/shared/domain/logger.dart';
import 'package:freeway_app/context/shared/domain/query_bus.dart';
import 'package:freeway_app/context/shared/infrastructure/query_bus/in_memory_query_bus.dart';
import 'package:freeway_app/context/shared/infrastructure/query_bus/query_handlers_information.dart';

/// Inject shared dependencies
void inject(Environment env) {
  GetIt.I
    ..registerLazySingleton<Logger>(() => ConsoleLogger())
    ..registerLazySingleton<QueryHandlersInformation>(() => QueryHandlersInformation([]))
    ..registerLazySingleton<QueryBus>(() {
      final queryInfoHandler = GetIt.I.get<QueryHandlersInformation>();
      return InMemoryQueryBus(queryInfoHandler);
    });
}
