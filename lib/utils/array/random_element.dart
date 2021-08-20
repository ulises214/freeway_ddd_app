// 🎯 Dart imports:
import 'dart:math';

/// Get a random element from a list
T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}
