import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light, //bottom bar icons
    ),
  );
  runApp(const App());
}
