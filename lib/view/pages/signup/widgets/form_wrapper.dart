import 'package:flutter/material.dart';

/// Basic wrapper for forms
///
/// Add a padding and a max with
class FormWrapper extends StatelessWidget {
  /// Create a white wrapper for forms
  const FormWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// The widget displayed inside the wrapper
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
      ),
      padding: const EdgeInsets.all(24.0),
      constraints: const BoxConstraints(maxWidth: 450),
      child: child,
    );
  }
}
