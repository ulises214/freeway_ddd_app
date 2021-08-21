// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// The main entry point for the application
class FreeWayApp extends StatelessWidget {
  /// Creates the mate app as entry point
  const FreeWayApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material A Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
