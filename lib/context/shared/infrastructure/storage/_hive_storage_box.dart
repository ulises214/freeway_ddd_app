import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const _boxName = 'Free Way Storage Box';

/// An abstraction to make local operation with [Hive]
abstract class HiveStorage {
  /// Initialize [Hive] and creates the box
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox(_boxName);
  }

  late final Box _box;

  /// Save an value using [keyName] as key
  void store(String keyName, String data) => _box.put(keyName, data);

  /// Read an value using [keyName] as key
  String? read(String keyName) => _box.get(keyName);

  /// Delete an value using [keyName] as key
  void delete(String keyName) => _box.get(keyName);
}
