// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/app/dependency_injection/application.dart';
import 'package:freeway_app/context/shared/domain/domain.dart';
import 'app/ui/app.dart';

void main() async {
  await inject(Environment.devFront);
  runApp(const FreeWayApp());
}
