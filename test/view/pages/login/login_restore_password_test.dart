// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freeway_app/models_view/login/login_model_view.dart';
import 'package:freeway_app/view/pages/login/page.dart';
import 'package:freeway_app/view/pages/login/widgets/restores_password_dialog.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:faker/faker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_form_test.mocks.dart';

@GenerateMocks([LoginViewModel])
void main() {
  group('Login: restore password dialog', () {
    late MockLoginViewModel loginViewModel;
    setUpAll(() {
      Get.testMode = true;
    });
    setUp(() async {
      loginViewModel = MockLoginViewModel();
      Get.put(loginViewModel as LoginViewModel);
    });
    tearDown(() async {
      reset(loginViewModel);
      await Get.delete<LoginViewModel>();
    });

    testWidgets(
      'Restore password label show and open dialog',
      (tester) async {
        await tester.pumpWidget(const GetMaterialApp(home: LoginPage()));
        when(loginViewModel.showRestorePasswordDialog());
        final restorePasswordLabel = find.text('¿Contraseña olvidada?');
        expect(restorePasswordLabel, findsOneWidget);
        await tester.tap(restorePasswordLabel);
        verify(loginViewModel.showRestorePasswordDialog());
      },
    );
    testWidgets('Restore password dialog render correctly', (tester) async {
      await tester.pumpWidget(GetMaterialApp(home: RestorePasswordDialog()));
      final emailInput = find.byType(TextFormField);
      final roundedButton = find.byType(RoundedButton);
      expect(emailInput, findsOneWidget);
      expect(roundedButton, findsNWidgets(2));
    });
    testWidgets('Dialog calls to login view model when has a valid email',
        (tester) async {
      await tester.pumpWidget(GetMaterialApp(home: RestorePasswordDialog()));
      final emailInput = find.byType(TextFormField);
      final roundedButton = find.byType(RoundedButton).first;
      await tester.enterText(emailInput, faker.internet.email());
      await tester.tap(roundedButton);
      verify(loginViewModel.requestRestorePassword(captureAny));
    });
    testWidgets(
        'Dialog doesnt calls to login view model when has a invalid email',
        (tester) async {
      await tester.pumpWidget(GetMaterialApp(home: RestorePasswordDialog()));
      final emailInput = find.byType(TextFormField);
      final roundedButton = find.byType(RoundedButton).first;
      await tester.enterText(emailInput, 'invalid email');
      await tester.tap(roundedButton);
      verifyNever(loginViewModel.requestRestorePassword(captureAny));
    });
  });
}
