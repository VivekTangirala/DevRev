import 'package:carwash/Helpers/constants.dart';
import '../file_exporter.dart';

class SharedPreferencesService {
  static void setString(String key, String value) async {
    await Constants.sharedPreferences?.setString(key, value);
  }

  static void setInt(String key, int value) async {
    await Constants.sharedPreferences?.setInt(key, value);
  }

  static void clearSharedPreferences() async {
    await Constants.sharedPreferences?.clear();
  }
}
