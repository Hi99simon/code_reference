import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/helpers/navigator.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/widgets/auth/auth_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:official_starifly/widgets/auth/auth_top_bar.dart';
import 'package:official_starifly/widgets/auth/emailpw_login_button.dart';
import 'package:official_starifly/widgets/auth/signin_apple_button.dart';
import 'package:official_starifly/widgets/auth/signin_google_button.dart';
import 'package:official_starifly/widgets/basic/custom_textfield.dart';
import 'package:official_starifly/widgets/basic/custom_textfield_password.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({Key? key}) : super(key: key);

  @override
  _AuthLoginScreenState createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  TextEditingController authLoginEmailController = TextEditingController();
  TextEditingController authLoginPasswordController = TextEditingController();
  FocusNode loginFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool showEmailPw = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: AuthTopBar(
          changeChinese: () {
            HapticFeedback.selectionClick();
            setState(
              () {
                S.load(
                  Locale("zh_HK"),
                );

                EasyLoading.showToast("已轉換為中文");
              },
            );
          },
          changeEnglish: () {
            HapticFeedback.selectionClick();
            setState(
              () {
                S.load(
                  Locale(
                    "en",
                  ),
                );

                EasyLoading.showToast(
                  "Changed To English",
                );
              },
            );
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MediaQuery.of(context).size.width < 767
            ? loginIphone()
            : loginIpad(),
      ),
    );
  }

  Widget loginIpad() {
    final authProvider = Provider.of<AuthProvider>(context);
    return Container();
  }

  Widget loginIphone() {
    final authProvider = Provider.of<AuthProvider>(context);
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            LottieBuilder.asset(
              "assets/login.json",
              height: MediaQuery.of(context).size.width < 380 ? 150 : 250,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CustomText(
                    text: S().authloginwelcome,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    lightColor: kBlackTextColor,
                    darkColor: kWhiteTextColor),
              ),
            ),
            showEmailPw == false
                ? Column(
                    children: [
                      SizedBox(height: 16.0),
                      SigninAppleButton(),
                      SizedBox(height: 16.0),
                      SigninGoogleButton(),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomTextField(
                          hintTextInput: S().alemail,
                          controllerInput: authLoginEmailController,
                          textInputTypeInput: TextInputType.emailAddress,
                          focusNode: loginFocus,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomTextFieldPassword(
                          hintTextInput: S().alpw,
                          controllerInput: authLoginPasswordController,
                          focusNode: passwordFocus,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: EmailPwLoginButton(
                          text: S().loginAppBarTitle,
                          function: () async {},
                        ),
                      ),
                    ],
                  ),
            TextButton(
                onPressed: () async {
                  setState(() {
                    showEmailPw = !showEmailPw;
                  });
                },
                child: CustomText(
                  text: showEmailPw == false
                      ? S().loginwithemailpw
                      : S().loginwithsocial,
                  decoration: TextDecoration.underline,
                )),
            TextButton(
                onPressed: () async {
                  // FirebaseAuth.instance.signInAnonymously();

                  // authProvider.emailLogin(
                  //     context, "simon@starifly.hk", "simon@1202");
                  await authProvider.logOut();
                  print(FirebaseAuth.instance.currentUser?.uid);
                },
                child: Text("Signout")),
            TextButton(
                onPressed: () async {
                  // FirebaseAuth.instance.signInAnonymously();

                  // authProvider.emailLogin(
                  //     context, "simon@starifly.hk", "simon@1202");
                  // await authProvider.logOut();
                  print(FirebaseAuth.instance.currentUser?.uid);
                },
                child: Text("check uid"))
          ],
        ),
      ),
    );
  }
}
