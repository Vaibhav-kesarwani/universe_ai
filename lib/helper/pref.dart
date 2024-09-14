import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  static late Box _box;

  static Future<void> initalize() async {
    // To have the local storage for the app
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'myData');
  }

  static bool get showOnboarding => _box.get('showOnboarding', defaultValue: true);
  static set showOnboarding(bool value) => _box.put('showOnboarding', value);
}
