import 'package:flutter_test/flutter_test.dart';
import 'package:freeway_app/app/controllers/dialog_manager.dart';
import 'package:freeway_app/app/controllers/login_screen_controller.dart';
import 'package:freeway_app/app/controllers/router.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/routes.dart';
import 'package:freeway_app/app/ui/shared/dialogs_messages.dart';
import 'package:freeway_app/context/local_storage/application/application.dart';
import 'package:freeway_app/context/local_storage/domain/domain.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'package:freeway_app/context/shared/infrastructure/infrastrucutre.dart';
import 'package:freeway_app/context/user/application/application.dart';
import 'package:freeway_app/context/user/domain/domain.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:faker/faker.dart';
import './login_screen_controller_test.mocks.dart';

final _fakeUserData = UserData(
  phoneNumber: PhoneNumber.random(),
  password: ValidPassword(Faker().internet.password(length: 8)),
);
final _fakeEmail = EmailAddress(Faker().internet.email());
@GenerateMocks([
  UserRepository,
  LocalStorageRepository,
  Logger,
  DialogManager,
  AppRouter,
])
void main() {
  final userRepository = MockUserRepository();
  final localStorageRepository = MockLocalStorageRepository();
  final queryBus = InMemoryQueryBus(QueryHandlersInformation([
    LoginUserQueryHandler(LoginUserRunner(userRepository)),
    RestoreUserPasswordQueryHandler(RestoreUserPasswordRunner(userRepository)),
    SaveAccessTokenQueryHandler(SaveAccessTokenRunner(localStorageRepository))
  ]));

  final logger = MockLogger();
  final dialogManager = MockDialogManager();
  final appRouter = MockAppRouter();
  late LoginScreenController controller;
  setUpAll(() async {
    await DependencyContainer.i.reset();
    DependencyContainer.i
      ..put<AppRouter>(() => appRouter)
      ..put<DialogManager>(() => dialogManager)
      ..put<Logger>(() => logger)
      ..put<QueryBus>(() => queryBus)
      ..put<UserRepository>(() => userRepository);
    controller = LoginScreenController();
  });
  tearDown(() {
    reset(appRouter);
    reset(dialogManager);
    reset(localStorageRepository);
    reset(logger);
    reset(userRepository);
  });
  group('Login Screen Controller: Login', () {
    test('Calls error dialog when error server occurs', () async {
      when(userRepository.login(captureAny)).thenThrow(const ServerError());
      await controller.login(_fakeUserData);
      verifyNever(appRouter.offAll(captureAny));
      verify(dialogManager.showErrorDialog(message: DialogMesagges.serverError));
    });
    test('Calls error dialog when error connection occurs', () async {
      when(userRepository.login(captureAny)).thenThrow(const ConnectionException());
      await controller.login(_fakeUserData);
      verifyNever(appRouter.offAll(captureAny));
      verify(dialogManager.showErrorDialog(message: DialogMesagges.connectionError));
    });
    test('Calls error dialog when invalid credentials are provided', () async {
      when(userRepository.login(captureAny)).thenThrow(const InvalidCredentialsException());
      await controller.login(_fakeUserData);
      verifyNever(appRouter.offAll(captureAny));
      verify(dialogManager.showErrorDialog(message: DialogMesagges.invalidCredentialsError));
    });
    test('Calls error dialog for custom exception', () async {
      when(userRepository.login(captureAny)).thenThrow(const CustomException());
      await controller.login(_fakeUserData);
      verifyNever(appRouter.offAll(captureAny));
      verify(dialogManager.showErrorDialog(
        title: 'Error inesperado',
        message: captureAnyNamed('message'),
      ));
    });
    test('Get correct token for correct login', () async {
      when(userRepository.login(captureAny)).thenAnswer((_) async => AccessToken('Falso token'));
      await controller.login(_fakeUserData);
      verifyNever(dialogManager.showErrorDialog(message: captureAnyNamed('message')));
      verify(appRouter.offAll(RoutesDefinitions.home));
      verify(localStorageRepository.saveToken(captureAny));
    });
  });
  group('Login Screen Controller: Restore password', () {
    test('Manage connection error correctly', () async {
      when(userRepository.requestRestorePassword(captureAny))
          .thenThrow(const ConnectionException());
      await controller.sendRestorePasswordEmail(_fakeEmail);
      verify(dialogManager.showErrorDialog(message: DialogMesagges.connectionError));
      verifyNever(dialogManager.showConfirmationDialog(message: captureAnyNamed('message')));
    });
    test('Manage server error correctly', () async {
      when(userRepository.requestRestorePassword(captureAny)).thenThrow(const ServerError());
      await controller.sendRestorePasswordEmail(_fakeEmail);
      verify(dialogManager.showErrorDialog(message: DialogMesagges.serverError));
      verifyNever(dialogManager.showConfirmationDialog(message: captureAnyNamed('message')));
    });
    test('Show cofnrimation dialog when email sent correctly', () async {
      when(userRepository.requestRestorePassword(captureAny)).thenAnswer((_) => Future.value());
      await controller.sendRestorePasswordEmail(_fakeEmail);
      verify(
          dialogManager.showConfirmationDialog(message: DialogMesagges.restorePasswordEmailSent));
      verifyNever(dialogManager.showErrorDialog(message: captureAnyNamed('message')));
    });
  });
}
