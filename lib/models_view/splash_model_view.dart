import 'package:get/get.dart';

/// Controller for Splash page
class SplashViewModel {
  /// Verify if stored token is valid and login ro send to Login Page
  Future<void> requestUserInfo() async {
    // * Request user data and verify if is login in device
    // * Await to smoot transition
    await Future.delayed(const Duration(seconds: 2));
    await Get.offAllNamed('/login');
  }
}
