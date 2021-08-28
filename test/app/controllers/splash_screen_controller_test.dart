// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/context/local_storage/application/access_token/get/_get_use_case.dart';
import 'package:freeway_app/context/local_storage/domain/domain.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/shared/infrastructure/query_bus/_in_memory_query_bus.dart';
import 'package:freeway_app/context/user/application/application.dart';
import 'package:mockito/annotations.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/controllers/controller.dart';
import 'package:freeway_app/context/user/domain/domain.dart';
import 'package:mockito/mockito.dart';
import 'splash_screen_controller_test.mocks.dart';

@GenerateMocks([
  AppRouter,
  UserRepository,
  LocalStorageRepository,
])
void main() {
  final appRputer = MockAppRouter();
  final userRepository = MockUserRepository();
  final localStorageRepository = MockLocalStorageRepository();
  final queryBus = InMemoryQueryBus(QueryHandlersInformation([
    ValidateTokenQueryHandler(ValidateTokenRunner(userRepository)),
    GetAccessTokenQueryHandler(GetAccessTokenRunner(localStorageRepository))
  ]));
  late final SplashScreenController controller;
  setUpAll(() async {
    await DependencyContainer.i.reset();
    DependencyContainer.i
      ..put<UserRepository>(() => userRepository)
      ..put<LocalStorageRepository>(() => localStorageRepository)
      ..put<QueryBus>(() => queryBus)
      ..put<AppRouter>(() => appRputer);
    controller = SplashScreenController();
  });
  tearDown(() {
    reset(appRputer);
    reset(userRepository);
    reset(localStorageRepository);
  });
  group('Splash Screen controller', () {
    test(
      'Given an false response When the controlled is called Then the approuter go to login',
      () async {
        when(localStorageRepository.getToken()).thenAnswer((_) async => null);
        await controller.requestUserInfo();
        verifyNever(userRepository.validateToken(captureAny));
        verifyNever(appRputer.offAll(RoutesDefinitions.home));
        verify(appRputer.offAll(RoutesDefinitions.login));
      },
    );
    test(
      'Given an invalid token response from localstorage When the controlled is called Then the approuter go to login',
      () async {
        when(localStorageRepository.getToken())
            .thenAnswer((_) async => AccessToken('Invalid token'));
        when(userRepository.validateToken(captureAny)).thenAnswer((_) async => false);
        await controller.requestUserInfo();
        verify(userRepository.validateToken(captureAny));
        verify(appRputer.offAll(RoutesDefinitions.login));
        verifyNever(appRputer.offAll(RoutesDefinitions.home));
      },
    );
    test(
      'Given a valid token response from localstorage When the controlled is called Then the approuter go to home',
      () async {
        when(localStorageRepository.getToken()).thenAnswer((_) async => AccessToken('Valid token'));
        when(userRepository.validateToken(captureAny)).thenAnswer((_) async => true);
        await controller.requestUserInfo();
        verify(userRepository.validateToken(captureAny));
        verify(appRputer.offAll(RoutesDefinitions.home));
        verifyNever(appRputer.offAll(RoutesDefinitions.login));
      },
    );
  });
}
