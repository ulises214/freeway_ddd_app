import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/molecules/elevated_logo.dart';

/// A wrapper to define borders and set Logo in the form
class LoginFormWrapper extends StatefulWidget {
  /// A wrapper to define borders and set Logo in the form
  const LoginFormWrapper({Key? key, required this.child}) : super(key: key);

  /// Child displayer inside the container
  final Widget child;

  @override
  _LoginFormWrapperState createState() => _LoginFormWrapperState();
}

class _LoginFormWrapperState extends State<LoginFormWrapper> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      fit: StackFit.loose,
      children: [
        AnimatedSize(
          duration: Duration(milliseconds: 200),
          vsync: this,
          child: Container(
            padding: const EdgeInsets.all(24.0).copyWith(top: 55),
            decoration: BoxDecoration(
              color: FreeWayTheme.white,
              borderRadius: FreeWayTheme.borderRadius,
            ),
            child: widget.child,
          ),
        ),
        Positioned(
          top: -110,
          child: AnimatedSize(
            duration: Duration(milliseconds: 100),
            vsync: this,
            child: ElevatedLogo(),
          ),
        ),
      ],
    );
  }
}
