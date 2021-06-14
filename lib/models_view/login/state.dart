import 'package:get/get.dart';

/// State managment of Login view
class LoginViewState extends RxController {
  final _isLoading = false.obs;

  /// The form reques is login
  bool get isLoading => _isLoading();
  set isLoading(bool newState) {
    if (isLoading == newState) return;
    _isLoading.value = newState;
  }
}
