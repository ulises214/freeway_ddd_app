// 🐦 Flutter imports:
import 'package:flutter/material.dart';
part '_colors.dart';

/// A class with all styles required for the application
abstract class FreeWayTheme {
  /// General borderRadius
  static final borderRadius = BorderRadius.circular(borderRadiusSize);

  /// Border radius size
  static const borderRadiusSize = 24.0;

  // ? Gradients
  /// Gradient used in pages background
  static const Gradient verticalGradient = LinearGradient(
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
    colors: [FreeWayColors.officialBlue1, FreeWayColors.officialBlue2],
  );

  /// Gradient used in widgets backgrund
  static const Gradient horizontalGradient = LinearGradient(
    end: Alignment.centerLeft,
    begin: Alignment.centerRight,
    colors: [FreeWayColors.officialBlue1, FreeWayColors.officialBlue2],
  );
  // * App theme
  /// The application theme
  static ThemeData get theme {
    final lightTheme = ThemeData.light();
    final baseTextTheme = lightTheme.textTheme;
    final textTheme = baseTextTheme
        .copyWith(
          headline1: baseTextTheme.headline1!.copyWith(fontSize: 96, fontWeight: FontWeight.w300),
          headline2: baseTextTheme.headline2!.copyWith(fontSize: 60, fontWeight: FontWeight.w300),
          headline3: baseTextTheme.headline3!.copyWith(fontSize: 48, fontWeight: FontWeight.w400),
          headline4: baseTextTheme.headline4!.copyWith(fontSize: 34, fontWeight: FontWeight.w400),
          headline5: baseTextTheme.headline5!.copyWith(fontSize: 24, fontWeight: FontWeight.w400),
          headline6: baseTextTheme.headline6!.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
          subtitle1: baseTextTheme.subtitle1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          subtitle2: baseTextTheme.subtitle2!.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
          bodyText1: baseTextTheme.bodyText1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          bodyText2: baseTextTheme.bodyText2!.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
          button: baseTextTheme.button!.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
          caption: baseTextTheme.caption!.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
          overline: baseTextTheme.overline!.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
        )
        .apply(fontFamily: 'Rubik');
    return lightTheme.copyWith(
      iconTheme: const IconThemeData.fallback().copyWith(color: Colors.white),
      primaryColor: FreeWayColors.extraBlue1,
      canvasColor: Colors.white,
      appBarTheme: lightTheme.appBarTheme.copyWith(brightness: Brightness.dark),
      textTheme: textTheme,
      scaffoldBackgroundColor: FreeWayColors.gray2,
    );
  }
}
