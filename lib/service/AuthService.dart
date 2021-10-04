import 'package:flutter_webapi/model/UserCM.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final String IS_LOGIN = "is_login";
  static final String USERNAME = "username";

  Future login({UserCM user}) async {
    if (user.Username == "admin@gmail.com" && user.Password == "password") {
      SharedPreferences _perfs = await SharedPreferences.getInstance();
      _perfs.setString(USERNAME, user.Username);
      _perfs.setBool(IS_LOGIN, true);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> isLogin() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(IS_LOGIN) ?? false;
  }

  Future isLogout() async {
    SharedPreferences _perfs = await SharedPreferences.getInstance();
    _perfs.remove(IS_LOGIN);

    return await Future<void>.delayed(Duration(seconds: 1));
  }
}
