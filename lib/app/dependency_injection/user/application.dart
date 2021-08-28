// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';

import 'package:freeway_app/context/shared/infrastructure/conncection/graphql/graphql_client_facotry.dart';
import 'package:freeway_app/context/user/application/user_uses_cases.dart';
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
    case Environment.production:
    case Environment.e2e:
      _injectGraphQL();
      break;
  }
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

void _injectQueryHandlers() {
  final loginQueryHandler = LoginUserQueryHandler(LoginUserRunner(_getRepository()));
  final restorePasswordQueryHandler = RestoreUserPasswordQueryHandler(
    RestoreUserPasswordRunner(_getRepository()),
  );
  _registerHandler(loginQueryHandler);
  _registerHandler(restorePasswordQueryHandler);
  DependencyContainer.i
    ..put<LoginUserQueryHandler>(() => loginQueryHandler)
    ..put<RestoreUserPasswordQueryHandler>(() => restorePasswordQueryHandler);
}
