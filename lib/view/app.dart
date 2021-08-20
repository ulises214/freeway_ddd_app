// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'pages/pages.dart';
import 'theme.dart';

/// The application wrapper, set theme and routes
class App extends StatelessWidget {
  /// Create the wrapper for the application
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FreeWayTheme.theme,
      debugShowCheckedModeBanner: false,
      title: 'FreeWay',
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/signup', page: () => const SignUpPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
    );
  }
}
