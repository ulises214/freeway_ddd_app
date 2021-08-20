// 📦 Package imports:
import 'package:ferry/ferry.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import 'create_graphql_client.dart';

/// Routes manager for application
class FreeWayRouter {
  /// Update token and go to home page
  void toHomeFromLogin(String token) async {
    await Get.delete<Client>();
    Get.put(await createGraphqlClient(token));
    await Get.offAllNamed('/home');
  }

  /// Open signup page and it can back
  void goToSignup() {
    Get.toNamed('/signup');
  }

  ///  Close a dialog if an dialog is open
  void closeDialog() {
    if (Get.isDialogOpen == true) Get.back();
  }
}
