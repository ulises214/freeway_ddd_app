// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/controllers/controller.dart';
import 'package:freeway_app/app/dependency_injection/container.dart';
import 'package:freeway_app/app/ui/screens/splash/widget/_splash_title.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';
import 'package:freeway_app/app/ui/widgets/molecules/molecules.dart';

/// First page to load user data
class SplashScreen extends StatefulWidget {
  /// Creates a page to display meanwhile the user info is requested
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final splashController = DependencyContainer.i.getOrPut(() => SplashScreenController());
    WidgetsBinding.instance?.addPostFrameCallback((_) => splashController.requestUserInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const _ScreenView();
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AssetsPaths.images.splashScreenBackground, fit: BoxFit.cover),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 400, maxHeight: 500),
              child: const _Body(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [SplashTitle(), LoadingIndicator()],
    );
  }
}
