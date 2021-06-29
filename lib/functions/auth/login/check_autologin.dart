import 'package:shared_preferences/shared_preferences.dart';

Future<bool> checkAutologin() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  bool? getIsAutoLogin = sharedPrefs.getBool("isAutoLogin");
  if (getIsAutoLogin != null) {
    return getIsAutoLogin;
  } else {
    return false;
  }
}
