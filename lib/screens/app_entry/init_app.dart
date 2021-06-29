import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/auth/auth_login_screen.dart';
import 'package:official_starifly/screens/home/homescreen_master.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class InitApp extends StatefulWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          // For Android.
          // Use [light] for white status bar and [dark] for black status bar.
          statusBarIconBrightness:
              themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
          // For iOS.
          // Use [dark] for white status bar and [light] for black status bar.
          statusBarBrightness:
              themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
        ),
        child: AuthLoginScreen());
  }
}
