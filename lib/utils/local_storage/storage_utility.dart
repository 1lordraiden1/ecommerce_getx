import 'package:get_storage/get_storage.dart';

class XLocalStorage {
  static final XLocalStorage _instance = XLocalStorage._internal();
  factory XLocalStorage() {
    return _instance;
  }

  XLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll(String key) async {
    await _storage.erase();
  }
}
