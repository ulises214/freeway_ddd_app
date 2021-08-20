// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// A class with all styles required for the application
abstract class FreeWayTheme {
  // * Blues
  /// The main blue
  static const officialBlue1 = Color(0xFF1E5B8F);

  /// Lighted main blue
  static const officialBlue2 = Color(0xFF21A9E0);

  /// Darken main blue
  static const darkblue = Color(0xFF123655);

  /// Commonly used blue
  static const extraBlue1 = Color(0xFF1A70B6);
  // ignore: public_member_api_docs
  static const extraBlue2 = Color(0xFF1898D4);
  // ignore: public_member_api_docs
  static const extraBlue3 = Color(0xFF5BD0FF);

  // * Gray scale

  // ignore: public_member_api_docs
  static const black = Color(0xFF37474F);
  // ignore: public_member_api_docs
  static const gray1 = Color(0xFFCFD8DC);
  // ignore: public_member_api_docs
  static const gray2 = Color(0xFFECEFF1);
  // ignore: public_member_api_docs
  static const gray3 = Color(0xFF878787);
  // ignore: public_member_api_docs
  static const gray4 = Color(0xFF8D8B8B);
  // * Others
  // ignore: public_member_api_docs
  static const success = Color(0xFF68D68D);
  // ignore: public_member_api_docs
  static const warning = Color(0xFFF5B041);
  // ignore: public_member_api_docs
  static const darkWarning = Color(0xFFC27B0A);
  // ignore: public_member_api_docs
  static const danger = Color(0xFFEF5350);
  // * Gradients
  /// Gradient used in pages background
  static const Gradient verticalGradient = LinearGradient(
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
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
          bodyText1: baseTextTheme.bodyText1!.copyWith(fontWeight: FontWeight.w400),
          bodyText2: baseTextTheme.bodyText2!.copyWith(
            fontSize: 18,
          ),
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
