import 'package:get/get.dart';

import 'create_graphql_client.dart';

/// Routes manager for application
class Router {
  /// Update token and go to home page
  static void toHomeFromLogin(String token) async {
    await createGraphqlClient(token);
    await Get.offAllNamed('/home');
  }

  /// Open signup page and it can back
  static void goToSignup() {
    Get.toNamed('/signup');
  }

  ///  Close a dialog if an dialog is open
  static void closeDialog() {
    if (Get.isDialogOpen == true) Get.back();
  }
}
