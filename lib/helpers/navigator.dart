import 'package:flutter/material.dart';
import 'package:official_starifly/screens/auth/auth_signup_screen.dart';
import 'package:official_starifly/screens/home/homescreen_master.dart';

navigateHomeScreenMaster({
  required BuildContext context,
}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HomescreenMaster(),
      settings: RouteSettings(name: '/homescreenmaster'),
    ),
  );
}

navigateSignUp({required BuildContext context, String? signupEmailInput}) {
  if (MediaQuery.of(context).size.width >= 768) {
//ipad
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpMasterScreen(
          signupEmailInput: signupEmailInput,
        ),
        settings: RouteSettings(name: '/signup'),
      ),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpMasterScreen(
          signupEmailInput: signupEmailInput,
        ),
        settings: RouteSettings(name: '/signup'),
      ),
    );
  }
}
