// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/shared/infrastructure/infrastrucutre.dart';
import 'package:freeway_app/context/user/application/application.dart';
import 'package:freeway_app/context/user/domain/domain.dart';
import 'package:freeway_app/context/user/infrastructure/infrastructure.dart';

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
  final validateTokenQueryHandler = ValidateTokenQueryHandler(
    ValidateTokenRunner(_getRepository()),
  );
  final restorePasswordQueryHandler = RestoreUserPasswordQueryHandler(
    RestoreUserPasswordRunner(_getRepository()),
  );
  _registerHandler(loginQueryHandler);
  _registerHandler(restorePasswordQueryHandler);
  _registerHandler(validateTokenQueryHandler);
  DependencyContainer.i
    ..put(() => loginQueryHandler)
    ..put(() => restorePasswordQueryHandler)
    ..put(() => validateTokenQueryHandler);
}
