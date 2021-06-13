import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import 'widgets/body.dart';

/// A page to register a new user
class SignUpPage extends StatelessWidget {
  /// Create the signup page
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledText(
          'Nuevo registro',
          type: StyledTextType.h6,
          textColor: Colors.white,
        ),
      ),
      body: const SignUpFormBody(),
    );
  }
}
