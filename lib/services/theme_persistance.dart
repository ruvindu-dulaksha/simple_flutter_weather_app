import 'package:shared_preferences/shared_preferences.dart';

class ThemePersistance {
  //store the user's save theme in shared preferences
  Future<void> storeTheme(bool isDark) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("isDark", isDark);
    print("theme stored");
  }

  //load the user's save theme from shared preferences
  Future<bool> loadTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("theme loaded");
    return preferences.getBool("isDark") ?? false;
  }
}
