import 'package:flutter/material.dart';

import '../../../models_view/splash_model_view.dart';
import '../../assets_paths.dart';
import 'widgets/loading.dart';
import 'widgets/top_title.dart';

/// First page to load user data
class SplashPage extends StatefulWidget {
  /// Creates a page to display meanwhile the user info is requested
  const SplashPage({Key? key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => SplashViewModel().requestUserInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetsPaths.images.splashScreenBackground,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SplashTitle(),
            BottomLoading(),
          ],
        ),
      ),
    );
  }
}
