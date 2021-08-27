// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// A class with all styles required for the application
abstract class FreeWayTheme {
  // * Blues
  /// The main blue
  static const officialBlue1 = Color.fromRGBO(0x1e, 0x5b, 0x8f, 1);

  /// Lighted main blue
  static const officialBlue2 = Color.fromRGBO(0x21, 0xA9, 0xE0, 1);

  /// Darken main blue
  static const darkblue = Color.fromRGBO(0x12, 0x36, 0x55, 1);

  /// Commonly used blue
  static const extraBlue1 = Color.fromRGBO(0x1A, 0x70, 0xB6, 1);

  /// Another used blue
  static const extraBlue2 = Color.fromRGBO(0x18, 0x98, 0xD4, 1);

  /// Anothe another used blue
  static const extraBlue3 = Color.fromRGBO(0x5B, 0xD0, 0xFF, 1);

  // * Gray scale

  /// Common black
  static const black = Color.fromRGBO(0x37, 0x47, 0x4F, 1);

  /// Common white
  static const white = Colors.white;

  /// Common gray
  static const gray1 = Color.fromRGBO(0xCF, 0xD8, 0xDC, 1);

  /// Common gray
  static const gray2 = Color.fromRGBO(0xEC, 0xEF, 0xF1, 1);

  /// Common gray
  static const gray3 = Color.fromRGBO(0x87, 0x87, 0x87, 1);

  /// Common gray
  static const gray4 = Color.fromRGBO(0x8D, 0x8B, 0x8B, 1);
  // * Others
  /// Green succes
  static const success = Color.fromRGBO(0x68, 0xD6, 0x8D, 1);

  /// Yellow warning
  static const warning = Color.fromRGBO(0xF5, 0xB0, 0x41, 1);

  /// Darken warning
  static const darkWarning = Color.fromRGBO(0xC2, 0x7B, 0x0A, 1);

  /// Red danger
  static const danger = Color.fromRGBO(0xEF, 0x53, 0x50, 1);

  /// General borderRadius
  static final borderRadius = BorderRadius.circular(borderRadiusSize);

  /// Border radius size
  static const borderRadiusSize = 24.0;

  // ? Gradients
  /// Gradient used in pages background
  static const Gradient verticalGradient = LinearGradient(
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
    colors: [officialBlue1, officialBlue2],
  );

  /// Gradient used in scaffold background
  static const Gradient scaffoldGradient = LinearGradient(
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
    stops: [0.1, 0.9],
    colors: [officialBlue1, officialBlue2],
  );

  /// Gradient used in widgets backgrund
  static const Gradient horizontalGradient = LinearGradient(
    end: Alignment.centerLeft,
    begin: Alignment.centerRight,
    colors: [officialBlue1, officialBlue2],
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
      primaryColor: extraBlue1,
      canvasColor: Colors.white,
      appBarTheme: lightTheme.appBarTheme.copyWith(brightness: Brightness.dark),
      textTheme: textTheme,
      scaffoldBackgroundColor: gray2,
    );
  }
}
