import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/context/local_storage/application/application.dart';
import 'package:freeway_app/context/local_storage/domain/local_storage_respository.dart';
import 'package:freeway_app/context/local_storage/infrastructure/hive_local_storage_repository.dart';
import 'package:freeway_app/context/local_storage/infrastructure/inmemory_local_storage_repository.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';

LocalStorageRepository _getRepository() => DependencyContainer.i.get<LocalStorageRepository>();
void _registerHandler<T extends QueryHandler>(T queryH) =>
    DependencyContainer.i.get<QueryBus>().add(queryH);

/// Inject all dependencies relationated with local storage
void inject(Environment env) {
  switch (env) {
    case Environment.devFront:
    case Environment.devFrontConnected:
    case Environment.testFront:
      _injectInMemory();
      break;
    case Environment.e2e:
    case Environment.production:
      _injectHive();
      break;
  }
  _injectQueryHandlers();
}

void _injectInMemory() {
  DependencyContainer.i.put<LocalStorageRepository>(() => InMemoryLocalStorageRepository());
}

void _injectHive() {
  DependencyContainer.i.put<LocalStorageRepository>(() => HiveLocalStorageRepository());
}

void _injectQueryHandlers() {
  final deleteAccessTokenQueryHandler =
      DeleteAccessTokenQueryHandler(DeleteAccessTokenRunner(_getRepository()));
  final saveAccessTokenQueryHandler =
      SaveAccessTokenQueryHandler(SaveAccessTokenRunner(_getRepository()));
  final getAccessTokenQueryHandler =
      GetAccessTokenQueryHandler(GetAccessTokenRunner(_getRepository()));
  _registerHandler(deleteAccessTokenQueryHandler);
  _registerHandler(saveAccessTokenQueryHandler);
  _registerHandler(getAccessTokenQueryHandler);
  DependencyContainer.i
    ..put<DeleteAccessTokenQueryHandler>(() => deleteAccessTokenQueryHandler)
    ..put<SaveAccessTokenQueryHandler>(() => saveAccessTokenQueryHandler)
    ..put<GetAccessTokenQueryHandler>(() => getAccessTokenQueryHandler);
}
