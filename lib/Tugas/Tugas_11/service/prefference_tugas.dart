import 'package:shared_preferences/shared_preferences.dart';

class PrefferenceHandler {
  static late SharedPreferences _prefss;
  static Future<void> init() async {
    _prefss = await SharedPreferences.getInstance();
  }

  static const _keyIsLogins = "isLogin";

  static Future<void> setLogin(bool isLogin) async {
    await _prefss.setBool(_keyIsLogins, isLogin);
  }

  static bool get isLogin {
    return _prefss.getBool(_keyIsLogins) ?? false;
  }

  static Future<void> logOut() async {
    await _prefss.remove(_keyIsLogins);
  }
}
