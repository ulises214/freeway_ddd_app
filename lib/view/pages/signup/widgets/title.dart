import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../../theme.dart';

/// Widget displayed as title in signup page
class SignUpTitle extends StatelessWidget {
  /// Creates a basic title
  const SignUpTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            StyledText(
              'GRACIAS POR USAR FREEWAY',
              type: StyledTextType.h6,
              textColor: FreeWayTheme.extraBlue2,
            ),
            SizedBox(
              height: 10.0,
            ),
            StyledText(
              'Por favor completa los siguientes datos',
              type: StyledTextType.body1,
              textColor: FreeWayTheme.black,
            )
          ],
        ),
      ),
    );
  }
}
