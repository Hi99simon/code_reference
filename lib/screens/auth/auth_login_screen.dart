import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/helpers/navigator.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/auth/auth_forgetpw_screen.dart';
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
import 'package:url_launcher/url_launcher.dart';

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
  void dispose() {
    // TODO: implement dispose
    authLoginEmailController.dispose();
    authLoginPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: CustomTextFieldPassword(
                              hintTextInput: S().alpw,
                              controllerInput: authLoginPasswordController,
                              focusNode: passwordFocus,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 24.0, top: 16),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: S().alforgot,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: themeMode == ThemeMode.dark
                                                  ? kDarkTextColor
                                                  : kLightTextColor),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () async {
                                          HapticFeedback.selectionClick();
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (c, a1, a2) =>
                                                  ForgotPwScreen(
                                                forgotPwEmailInput:
                                                    authLoginEmailController
                                                        .text,
                                              ),
                                              transitionsBuilder:
                                                  (c, anim, a2, child) =>
                                                      FadeTransition(
                                                          opacity: anim,
                                                          child: child),
                                              transitionDuration:
                                                  Duration(milliseconds: 250),
                                            ),
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: EmailPwLoginButton(
                              text: S().loginAppBarTitle,
                              function: () async {
                                authProviderFalse.emailLogin(
                                  context,
                                  authLoginEmailController.text,
                                  authLoginPasswordController.text,
                                );
                                authLoginEmailController.clear();
                                authLoginPasswordController.clear();
                              },
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
                GestureDetector(
                  onTap: () {
                    HapticFeedback.selectionClick();
                    authProviderFalse.signinAnonymous();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomText(
                      text: "👻 ${S().visitormode}",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      lightColor: kBlueColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    HapticFeedback.selectionClick();
                    navigateSignUp(
                        context: context,
                        signupEmailInput: authLoginEmailController.text);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomText(
                      text: "❣ ${S().createaccount}",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      lightColor: kBlueColor,
                    ),
                  ),
                ),
                // TextButton(
                //     onPressed: () async {
                //       // FirebaseAuth.instance.signInAnonymously();

                //       // authProvider.emailLogin(
                //       //     context, "simon@starifly.hk", "simon@1202");
                //       await authProviderFalse.logOut();
                //       print(FirebaseAuth.instance.currentUser?.uid);
                //     },
                //     child: Text("Signout")),
                // TextButton(
                //     onPressed: () async {
                //       // FirebaseAuth.instance.signInAnonymously();

                //       // authProvider.emailLogin(
                //       //     context, "simon@starifly.hk", "simon@1202");
                //       // await authProvider.logOut();
                //       print(FirebaseAuth.instance.currentUser?.uid);
                //     },
                //     child: Text("check uid")),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                color: themeMode == ThemeMode.dark
                    ? kBackgroundColorDark
                    : kBackgroundColorLight,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: S().understandtermsbysignin1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.none,
                                  ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  HapticFeedback.selectionClick();
                                  Navigator.pop(context);
                                },
                            ),
                            TextSpan(
                              text: S().understandtermsbysignin2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.underline,
                                  ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  HapticFeedback.selectionClick();
                                  await canLaunch(
                                          "https://starifly.hk/privacy-policy/")
                                      ? await launch(
                                          "https://starifly.hk/privacy-policy/")
                                      : throw 'Could not launch "https://starifly.hk/privacy-policy/"';
                                },
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: S().dataprotectbyprivacyrule1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.none,
                                  ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  HapticFeedback.selectionClick();
                                  Navigator.pop(context);
                                },
                            ),
                            TextSpan(
                              text: S().dataprotectbyprivacyrule2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.underline,
                                  ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  HapticFeedback.selectionClick();
                                  await canLaunch(
                                          "https://starifly.hk/privacy-policy/")
                                      ? await launch(
                                          "https://starifly.hk/privacy-policy/")
                                      : throw 'Could not launch "https://starifly.hk/privacy-policy/"';
                                },
                            ),
                            TextSpan(
                              text: S().dataprotectbyprivacyrule3,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.none,
                                  ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  HapticFeedback.selectionClick();
                                  Navigator.pop(context);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
