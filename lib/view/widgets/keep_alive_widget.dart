import 'package:flutter/material.dart';

/// A wrapper to always mantain page state
class KeepAlivePage extends StatefulWidget {
  /// Creates a widget that save this state
  const KeepAlivePage({Key? key, required this.child}) : super(key: key);

  /// The widget below the widget tree
  final Widget child;
  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
