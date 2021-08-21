// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:freeway_app/context/shared/domain/env.dart';
import 'package:freeway_app/context/shared/domain/query_bus.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_context.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_facotry.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_config.dart';
import 'package:freeway_app/context/user/application/login/login_user_query_handler.dart';
import 'package:freeway_app/context/user/application/login/login_user_runner.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query_handler.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query_runner.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';
import 'package:freeway_app/context/user/infrastructure/graphql/graphql_user_repository.dart';
import 'package:freeway_app/context/user/infrastructure/inmemory/in_memory_user_repository.dart';

UserRepository _getRepository() => GetIt.I.get<UserRepository>();
void _registerHandler<T extends QueryHandler>(T queryH) => GetIt.I.get<QueryBus>().add(queryH);

/// Inject the dependencies relationed withe the users
void inject(Environment env) {
  switch (env) {
    case Environment.devFront:
      _injectInMemory();
      break;
    case Environment.testFront:
      _injectInMemory();
      break;
    case Environment.devFrontConnected:
      _injectGraphQL();
      break;
  }
  //? Runners
  _injectRunners();
  //? QueryHandlers
  _injectQueryHandlers();
}

void _injectInMemory() {
  GetIt.I.registerLazySingleton<UserRepository>(() => InMemoryUserRepository());
}

void _injectGraphQL() {
  GetIt.I
    //? Client
    ..registerLazySingleton<GraphQLClientFactory>(() {
      final clientFactory = GraphQLClientFactory()
        ..createClient(
          GraphQLClientContext.unloggedOperation,
          GraphQLConfig('http://192.168.1.69:3000/graphql'),
        );
      return clientFactory;
    })
    //? Repository
    ..registerLazySingleton<UserRepository>(() {
      final clientFacotry = GetIt.I.get<GraphQLClientFactory>();
      return GraphQLUserRepository(clientFacotry);
    });
}

void _injectRunners() {
  GetIt.I
    ..registerLazySingleton<LoginUserRunner>(() => LoginUserRunner(_getRepository()))
    ..registerLazySingleton<RestoreUserPasswordRunner>(
      () => RestoreUserPasswordRunner(_getRepository()),
    );
}

void _injectQueryHandlers() {
  GetIt.I
    ..registerLazySingleton<LoginUserQueryHandler>(() {
      final queryHandler = LoginUserQueryHandler(
        GetIt.I.get<LoginUserRunner>(),
      );
      _registerHandler(queryHandler);
      return queryHandler;
    })
    ..registerLazySingleton<RestoreUserPasswordQueryHandler>(() {
      final queryHandler = RestoreUserPasswordQueryHandler(
        GetIt.I.get<RestoreUserPasswordRunner>(),
      );
      _registerHandler(queryHandler);
      return queryHandler;
    });
}
