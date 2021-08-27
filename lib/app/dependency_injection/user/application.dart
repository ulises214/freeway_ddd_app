// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/domain/env.dart';
import 'package:freeway_app/context/shared/domain/query_bus.dart';
import 'package:freeway_app/context/shared/domain/query_handler.dart';
import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_facotry.dart';
import 'package:freeway_app/context/user/application/login/login_user_query_handler.dart';
import 'package:freeway_app/context/user/application/login/login_user_runner.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query_handler.dart';
import 'package:freeway_app/context/user/application/restore_password/restore_user_password_query_runner.dart';
import 'package:freeway_app/context/user/domain/user_repository.dart';
import 'package:freeway_app/context/user/infrastructure/storage/graphql/graphql_user_repository.dart';
import 'package:freeway_app/context/user/infrastructure/storage/inmemory/in_memory_user_repository.dart';

UserRepository _getRepository() => DependencyContainer.i.get<UserRepository>();
void _registerHandler<T extends QueryHandler>(T queryH) =>
    DependencyContainer.i.get<QueryBus>().add(queryH);

/// Inject the dependencies relationed withe the users
void inject(Environment env) {
  switch (env) {
    case Environment.devFront:
    case Environment.testFront:
      _injectInMemory();
      break;
    case Environment.devFrontConnected:
    case Environment.e2e:
      _injectGraphQL();
      break;
  }
  //? Runners
  _injectRunners();
  //? QueryHandlers
  _injectQueryHandlers();
}

void _injectInMemory() {
  DependencyContainer.i.put<UserRepository>(() => InMemoryUserRepository());
}

void _injectGraphQL() {
  DependencyContainer.i
    //? Client
    ..put<GraphQLClientFactory>(() => GraphQLClientFactory('http://192.168.1.69:3000/graphql'))
    //? Repository
    ..put<UserRepository>(() {
      final clientFacotry = DependencyContainer.i.get<GraphQLClientFactory>();
      return GraphQLUserRepository(clientFacotry);
    });
}

void _injectRunners() {
  DependencyContainer.i
    ..put<LoginUserRunner>(() => LoginUserRunner(_getRepository()))
    ..put<RestoreUserPasswordRunner>(
      () => RestoreUserPasswordRunner(_getRepository()),
    );
}

void _injectQueryHandlers() {
  DependencyContainer.i
    ..put<LoginUserQueryHandler>(() {
      final queryHandler = LoginUserQueryHandler(
        DependencyContainer.i.get<LoginUserRunner>(),
      );
      _registerHandler(queryHandler);
      return queryHandler;
    })
    ..put<RestoreUserPasswordQueryHandler>(() {
      final queryHandler = RestoreUserPasswordQueryHandler(
        DependencyContainer.i.get<RestoreUserPasswordRunner>(),
      );
      _registerHandler(queryHandler);
      return queryHandler;
    });
}
