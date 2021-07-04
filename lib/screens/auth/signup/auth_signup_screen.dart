import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/auth/signup/signup_account_screen.dart';
import 'package:official_starifly/screens/auth/signup/signup_confirm_screen.dart';
import 'package:official_starifly/screens/auth/signup/signup_profile_screen.dart';
import 'package:official_starifly/widgets/auth/auth_progress_bar.dart';
import 'package:official_starifly/widgets/auth/auth_top_bar.dart';
import 'package:provider/provider.dart';

class SignUpMasterScreen extends StatefulWidget {
  final String? signupEmailInput;
  SignUpMasterScreen({this.signupEmailInput});
  @override
  _SignUpMasterScreenState createState() => _SignUpMasterScreenState();
}

class _SignUpMasterScreenState extends State<SignUpMasterScreen> {
  int currentSignUpPageView = 2;
  PageController _signUpPageViewController = PageController();

  @override
  void initState() {
    _signUpPageViewController = PageController(initialPage: 2);

    super.initState();
  }

  @override
  void dispose() {
    _signUpPageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  //signup body

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: AuthProgressBar(
                      currentSignUpPageView: currentSignUpPageView,
                    ),
                  ),

                  Expanded(
                    child: PageView.builder(
                      controller: _signUpPageViewController,
                      onPageChanged: (i) {
                        setState(() {
                          currentSignUpPageView = i;
                        });
                      },
                      itemCount: 3,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return [
                          SignUpAccountBody(
                            signUpPageController: _signUpPageViewController,
                            signUpEmailInput: widget.signupEmailInput,
                          ),
                          SignUpConfirmBody(
                            signUpPageController: _signUpPageViewController,
                          ),
                          SignUpProfileBody(
                            signUpPageController: _signUpPageViewController,
                          ),
                        ][index];
                      },
                    ),
                  )
                ],
              ),
              currentSignUpPageView != 0
                  ? Container()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 46,
                        color: themeChanger.themeMode == ThemeMode.dark
                            ? kBackgroundColorDark
                            : kBackgroundColorLight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: S().loginAppBarTitle,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
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
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
