import 'package:flutter/material.dart';
import 'package:freeway_app/app/dependency_injection/application.dart';

import 'app/ui/app.dart';

void main() {
  inject();
  runApp(const FreeWayApp());
}
