// ignore_for_file: unnecessary_cast

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// 🌎 Project imports:
import 'package:freeway_app/models_view/login/login_model_view.dart';
import 'package:freeway_app/view/pages/pages.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'login_form_test.mocks.dart';

@GenerateMocks([
  LoginViewModel,
])
void main() {
  _loginForm();
}

void _loginForm() {
  group('Login form', () {
    late MockLoginViewModel loginViewModel;
    Future<void> fillInputs(WidgetTester tester, Finder inputs,
        {required String phoneNumber, required String pass}) async {
      await tester.enterText(inputs.at(0), phoneNumber);
      await tester.enterText(inputs.at(1), pass);
    }

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
      'Login form doesn\'t sent invalid data to LoginViewModel',
      (tester) async {
        await tester.pumpWidget(const GetMaterialApp(home: LoginPage()));
        when(loginViewModel.login(captureAny))
            .thenThrow(Exception('It should not send data'));
        final inputs = find.byType(TextFormField);
        final submitButton =
            find.widgetWithText(RoundedButton, 'Iniciar sesión');
        expect(inputs, findsNWidgets(2));
        expect(submitButton, findsNWidgets(1));
        await fillInputs(tester, inputs,
            phoneNumber: 'not a phone number', pass: 'short');
        await tester.tap(submitButton);
      },
    );
    testWidgets('Login form sent valid data to LoginViewModel', (tester) async {
      await tester.pumpWidget(
        const GetMaterialApp(
          home: LoginPage(),
        ),
      );
      when(loginViewModel.login(captureAny))
          .thenAnswer((_) => Future.value(null));
      final inputs = find.byType(TextFormField);
      final submitButton = find.widgetWithText(RoundedButton, 'Iniciar sesión');
      expect(inputs, findsNWidgets(2));
      expect(submitButton, findsNWidgets(1));
      await fillInputs(tester, inputs,
          phoneNumber: '3123398831', pass: '12345678');
      await tester.tap(submitButton);
      verify(loginViewModel.login(captureAny));
    });
  });
}
