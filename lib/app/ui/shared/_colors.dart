part of '_theme.dart';

const _officialBlue1 = Color.fromRGBO(0x1e, 0x5b, 0x8f, 1);
const _officialBlue2 = Color.fromRGBO(0x21, 0xA9, 0xE0, 1);
const _darkblue = Color.fromRGBO(0x12, 0x36, 0x55, 1);
const _extraBlue1 = Color.fromRGBO(0x1A, 0x70, 0xB6, 1);
const _extraBlue2 = Color.fromRGBO(0x18, 0x98, 0xD4, 1);
const _extraBlue3 = Color.fromRGBO(0x5B, 0xD0, 0xFF, 1);
const _black = Color.fromRGBO(0x37, 0x47, 0x4F, 1);
const _white = Colors.white;
const _gray1 = Color.fromRGBO(0xCF, 0xD8, 0xDC, 1);
const _gray2 = Color.fromRGBO(0xEC, 0xEF, 0xF1, 1);
const _gray3 = Color.fromRGBO(0x87, 0x87, 0x87, 1);
const _gray4 = Color.fromRGBO(0x8D, 0x8B, 0x8B, 1);
const _success = Color.fromRGBO(0x68, 0xD6, 0x8D, 1);
const _warning = Color.fromRGBO(0xF5, 0xB0, 0x41, 1);
const _darkWarning = Color.fromRGBO(0xC2, 0x7B, 0x0A, 1);
const _danger = Color.fromRGBO(0xEF, 0x53, 0x50, 1);

/// Set the colors used in the app
abstract class FreeWayColors {
  // * Blues
  /// The main blue
  static const officialBlue1 = _officialBlue1;

  /// Lighted main blue
  static const officialBlue2 = _officialBlue2;

  /// Darken main blue
  static const darkblue = _darkblue;

  /// Commonly used blue
  static const extraBlue1 = _extraBlue1;

  /// Another used blue
  static const extraBlue2 = _extraBlue2;

  /// Anothe another used blue
  static const extraBlue3 = _extraBlue3;

  // * Gray scale

  /// Common black
  static const black = _black;

  /// Common white
  static const white = _white;

  /// Common gray
  static const gray1 = _gray1;

  /// Common gray
  static const gray2 = _gray2;

  /// Common gray
  static const gray3 = _gray3;

  /// Common gray
  static const gray4 = _gray4;
  // * Others
  /// Green succes
  static const success = _success;

  /// Yellow warning
  static const warning = _warning;

  /// Darken warning
  static const darkWarning = _darkWarning;

  /// Red danger
  static const danger = _danger;
}
