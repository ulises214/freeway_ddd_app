import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/molecules/elevated_logo.dart';

/// A wrapper to define borders and set Logo in the form
class LoginFormWrapper extends StatelessWidget {
  /// A wrapper to define borders and set Logo in the form
  const LoginFormWrapper({Key? key, required this.child}) : super(key: key);

  /// Child displayer inside the container
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 16.0), child: ElevatedLogo()),
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: FreeWayTheme.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(FreeWayTheme.borderRadiusSize),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
