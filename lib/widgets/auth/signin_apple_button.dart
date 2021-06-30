import 'package:flutter/material.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SigninAppleButton extends StatefulWidget {
  const SigninAppleButton({Key? key}) : super(key: key);

  @override
  _SigninAppleButtonState createState() => _SigninAppleButtonState();
}

class _SigninAppleButtonState extends State<SigninAppleButton> {
  @override
  Widget build(BuildContext context) {
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return InkWell(
      onTap: () {
        authProviderFalse.signInWithApple();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: themeMode == ThemeMode.dark ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  themeMode == ThemeMode.dark
                      ? "assets/apple_light_logo.png"
                      : "assets/apple_dark_logo.jpg",
                  height: 16,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  S().signinwithapple,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: themeMode == ThemeMode.dark
                          ? Colors.black
                          : Colors.white,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
