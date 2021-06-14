import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../theme.dart';

/// Show an Dialog with Icon and [text] or a defualt text
/// when a form has an error
void showErrorDialog(String text) {
  Get.dialog(
    BasicDialog(
      title: 'Error',
      content: StyledText(
        text,
        type: StyledTextType.body1,
        textColor: FreeWayTheme.black,
      ),
    ),
  );
}
