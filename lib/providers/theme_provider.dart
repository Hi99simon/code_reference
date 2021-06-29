import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

final customDarkTheme = ThemeData(
  fontFamily: "Genjyuu",
  accentColor: Color(0xff1ECAC0),
  brightness: Brightness.dark,
  primaryColor: Color(0xff121110),
  canvasColor: Color(0xff121110),
  buttonColor: Color(0xff1ECAC0),
  iconTheme: IconThemeData(color: Color(0xffC2C8CD)),
  appBarTheme: AppBarTheme(elevation: 0),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
      color: Color(0xffC2C8CD),
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w200,
      color: Color(0xffC2C8CD),
    ),
    headline1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Color(0xffC2C8CD),
    ),
    headline2: TextStyle(
      fontSize: 20,
      color: Color(0xffC2C8CD),
    ),
    headline3: TextStyle(
      fontSize: 24,
      color: Color(0xffffffff),
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xffC2C8CD),
    ),
    headline5: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      color: Color(0xffC2C8CD),
    ),
    // headline6: TextStyle(
    //   fontSize: 30,
    // ),
  ),
);

final customDarkThemeNormalFont = ThemeData(
  accentColor: Color(0xff1ECAC0),
  brightness: Brightness.dark,
  primaryColor: Color(0xff121110),
  canvasColor: Color(0xff121110),
  buttonColor: Color(0xff1ECAC0),
  iconTheme: IconThemeData(color: Color(0xffC2C8CD)),
  appBarTheme: AppBarTheme(elevation: 0),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
      color: Color(0xffC2C8CD),
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w200,
      color: Color(0xffC2C8CD),
    ),
    headline1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Color(0xffC2C8CD),
    ),
    headline2: TextStyle(
      fontSize: 20,
      color: Color(0xffC2C8CD),
    ),
    headline3: TextStyle(
      fontSize: 24,
      color: Color(0xffffffff),
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xffC2C8CD),
    ),
    headline5: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w200,
      color: Color(0xffC2C8CD),
    ),
    // headline6: TextStyle(
    //   fontSize: 30,
    // ),
  ),
);

final customLightTheme = ThemeData(
  fontFamily: "Genjyuu",
  accentColor: Color(0xff1ECAC0),
  brightness: Brightness.light,
  primaryColor: Colors.white,
  canvasColor: Color(0xfff9f9f9),
  buttonColor: Color(0xff1ECAC0),
  iconTheme: IconThemeData(
    color: Color(0xff3F4245),
  ),
  appBarTheme: AppBarTheme(elevation: 0, color: Color(0xfffffff)),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
    ),
    bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
    headline1: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    headline2: TextStyle(
      fontSize: 20,
    ),
    headline3: TextStyle(fontSize: 24, color: Color(0xff121110)),
    headline4: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
    // headline6: TextStyle(
    //   fontSize: 30,
    // ),
  ),
);

final customLightThemeNormalFont = ThemeData(
  accentColor: Color(0xff1ECAC0),
  brightness: Brightness.light,
  primaryColor: Colors.white,
  canvasColor: Color(0xfff9f9f9),
  buttonColor: Color(0xff1ECAC0),
  iconTheme: IconThemeData(
    color: Color(0xff3F4245),
  ),
  appBarTheme: AppBarTheme(elevation: 0, color: Color(0xffffffff)),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 16,
    ),
    bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
    headline1: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    headline2: TextStyle(
      fontSize: 20,
    ),
    headline3: TextStyle(fontSize: 24, color: Color(0xff121110)),
    headline4: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
    // headline6: TextStyle(
    //   fontSize: 30,
    // ),
  ),
);

class ThemeChanger with ChangeNotifier {
  ThemeMode? _themeMode;
  ThemeMode? get themeMode => _themeMode;
  void changeThemeMode(_themeModeInput) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("appDisplayMode", _themeModeInput.toString());
    _themeMode = _themeModeInput;
    notifyListeners();
  }

  String _fontFamily = 'default';
  String get fontFamily => _fontFamily;
  changeFontFamily(String _fontFamilyInput) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("appFontFamily", _fontFamilyInput);
    _fontFamily = _fontFamilyInput;
    notifyListeners();
  }
}
