import 'package:flutter/material.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SigninGoogleButton extends StatefulWidget {
  const SigninGoogleButton({Key? key}) : super(key: key);

  @override
  _SigninGoogleButtonState createState() => _SigninGoogleButtonState();
}

class _SigninGoogleButtonState extends State<SigninGoogleButton> {
  @override
  Widget build(BuildContext context) {
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return InkWell(
      onTap: () {
        authProviderFalse.signInWithGoogle();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: themeMode == ThemeMode.dark ? Colors.white : Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Colors.black),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/google_logo.png",
                  height: 16,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  S().signinwithgoogle,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: themeMode == ThemeMode.dark
                          ? Colors.black
                          : Colors.black,
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
