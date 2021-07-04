import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/auth/auth_login_screen.dart';
import 'package:official_starifly/screens/auth/confirm_email_screen.dart';
import 'package:official_starifly/screens/auth/over_active_device_screen.dart';
import 'package:official_starifly/screens/auth/signup/social_signup_screen.dart';
import 'package:official_starifly/screens/home/homescreen_master.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    final authProvider = Provider.of<AuthProvider>(context, listen: true);
    int loginDeviceCount = 3;
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
        child: assignScreens());
  }

  Widget assignScreens() {
    final authProvider = Provider.of<AuthProvider>(context, listen: true);
    int loginDeviceCount = 3;

    if (MediaQuery.of(context).size.width >= 768) {
      //ipad進入點
      // if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount != null &&
      //     authProvider.activeDeviceCount <= loginDeviceCount) {
      //   return HomeScreen();
      // } else if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount != null &&
      //     authProvider.activeDeviceCount <= loginDeviceCount &&
      //     authProvider.isUserAcVerified == false) {
      //   return ConfirmEmailScreen();
      // } else if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount != null &&
      //     authProvider.activeDeviceCount > loginDeviceCount) {
      //   return OverActiveDeviceScreen();
      // } else {
      return AuthLoginScreen();
      // }
    } else {
      //mobile進入點

      if (authProvider.userId != null &&
          authProvider.isUserProfileExist != null) {
        //有登入

        if (authProvider.isUserProfileExist == true) {
          if (authProvider.activeDeviceCount <= loginDeviceCount) {
            if (authProvider.isUserAcVerified == false) {
              //正常登入
              return HomescreenMaster();
            } else {
              //確認電郵
              return ConfirmEmailScreen();
            }
          } else {
            //太多登入
            return OverActiveDeviceScreen();
          }
        } else {
          //social login 未開profile
          return SocialSignupScreen();
        }
      } else {
        //冇登入
        return AuthLoginScreen();
      }

      // if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount <= loginDeviceCount) {
      //   return HomescreenMaster();
      // } else if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount <= loginDeviceCount &&
      //     authProvider.isUserAcVerified == false) {
      //   return ConfirmEmailScreen();
      // } else if (authProvider.userId != null &&
      //     authProvider.activeDeviceCount > loginDeviceCount) {
      //   return OverActiveDeviceScreen();
      // } else if (authProvider.userId == null) {
      //   return AuthLoginScreen();
      // } else {
      //   return AuthLoginScreen();
      // }
    }
  }
}
