// ignore_for_file: unnecessary_cast
import 'package:ferry/ferry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freeway_app/create_graphql_client.dart';
import 'package:freeway_app/graphq_requests/user/user_requests.dart';
import 'package:freeway_app/model/user/models.dart';
import 'package:freeway_app/models_view/login/login_model_view.dart';
import 'package:freeway_app/router.dart';
import 'package:freeway_app/view/widgets/dalogs.dart/dialogs_manager.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_model_view_test.mocks.dart';

final _validUserData =
    UserData(phoneNumber: '3123398831', password: '12345678');
final _inValidUserData =
    UserData(phoneNumber: '3123398831', password: '12345679');
@GenerateMocks([FreeWayRouter, DialogsManager])
void main() async {
  late MockFreeWayRouter freeWayRouter;
  late MockDialogsManager dialogsManager;
  late UserRequestsBuilder userRequestsBuilder;
  late LoginViewModel loginViewModel;
  setUpAll(() async {
    freeWayRouter = MockFreeWayRouter();
    dialogsManager = MockDialogsManager();
    userRequestsBuilder = UserRequestsBuilder();
    final client = await createGraphqlClient();
    Get.testMode = true;
    Get
      ..put(freeWayRouter as FreeWayRouter)
      ..put(dialogsManager as DialogsManager)
      ..put(userRequestsBuilder)
      ..put(client);
    loginViewModel = LoginViewModel();
  });
  tearDownAll(() async {
    await Get.delete<FreeWayRouter>();
    await Get.delete<DialogsManager>();
    await Get.delete<UserRequestsBuilder>();
    await Get.delete<Client>();
  });
  tearDown(() {
    reset(freeWayRouter);
    reset(dialogsManager);
  });

  test('It must login correctly and return a string token', () async {
    final userData = _validUserData;
    when(freeWayRouter.toHomeFromLogin(captureAny)).thenReturn(null);
    when(dialogsManager.showErrorDialog(
      title: captureAnyNamed('title'),
      text: captureAnyNamed('text'),
    )).thenThrow(Exception('Not must show error dialog'));

    await loginViewModel.login(userData);
    verify(freeWayRouter.toHomeFromLogin(captureAny));
  });
  test('It fails the login and show error dialog', () async {
    final userData = _inValidUserData;
    const errorTitle = 'Error de datos';
    when(freeWayRouter.toHomeFromLogin(captureAny))
        .thenThrow(Exception('Not must go to home'));
    when(dialogsManager.showErrorDialog(
      title: errorTitle,
      text: captureAnyNamed('text'),
    ));
    await loginViewModel.login(userData);
    verify(dialogsManager.showErrorDialog(
      title: errorTitle,
      text: captureAnyNamed('text'),
    ));
  });
}
