import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/constants/course/ban_chinese_email.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/widgets/auth/emailpw_login_button.dart';
import 'package:official_starifly/widgets/basic/custom_dialog.dart';
import 'package:official_starifly/widgets/basic/custom_icon.dart';
import 'package:official_starifly/widgets/basic/custom_textfield.dart';
import 'package:official_starifly/widgets/basic/custom_textfield_password.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpAccountBody extends StatefulWidget {
  final String? signUpEmailInput;
  final PageController signUpPageController;
  const SignUpAccountBody(
      {Key? key, this.signUpEmailInput, required this.signUpPageController})
      : super(key: key);

  @override
  _SignUpAccountBodyState createState() => _SignUpAccountBodyState();
}

class _SignUpAccountBodyState extends State<SignUpAccountBody> {
  bool emailable = true;
  bool readPrivatePolicy = false;
  bool alertReadPrivatePolicy = false;
  bool viewPassword = true;
  bool isAutoLogin = true;

  TextEditingController _signUpEmailController = TextEditingController();
  TextEditingController _signUpPasswordController = TextEditingController();
  TextEditingController _signUpPasswordConfirmController =
      TextEditingController();
  bool validatePressed = false;
  late RemoteConfig remoteConfig;

  @override
  void dispose() {
    _signUpEmailController.dispose();
    _signUpPasswordController.dispose();
    _signUpPasswordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/register.json",
                height: MediaQuery.of(context).size.width < 380 ? 150 : 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  hintTextInput: S().alemail,
                  controllerInput: _signUpEmailController,
                  textInputTypeInput: TextInputType.emailAddress,
                  trailingWidgetInput: InkWell(
                    onTap: () {
                      showCustomDialog(
                          context: context,
                          title: CustomText(
                              text: S().forahealthycommunity,
                              fontWeight: FontWeight.bold,
                              textAlignInput: TextAlign.left,
                              fontSize: 18,
                              lightColor: kBlackTextColor,
                              darkColor: kWhiteTextColor),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(text: S().rejectchineseemail),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.3),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      for (var item in banChineseEmail)
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          child: CustomText(
                                            text: item,
                                            textAlignInput: TextAlign.start,
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ));
                    },
                    child: CustomIcon(
                      iconInput: FeatherIcons.helpCircle,
                      iconSize: 24,
                      lightColor: Color(0xff888EA0),
                      darkColor: Color(0xff888EA0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFieldPassword(
                  hintTextInput: S().alpw,
                  controllerInput: _signUpPasswordController,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFieldPassword(
                  hintTextInput: S().arpwconfirm,
                  controllerInput: _signUpPasswordConfirmController,
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: kBlueColor,
                    value: emailable,
                    onChanged: (bool? value) {
                      HapticFeedback.selectionClick();
                      if (value != null) {
                        setState(() {
                          emailable = value;
                        });
                      }
                    },
                  ),
                  Expanded(
                    child: CustomText(
                      text: S().updateme,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      lightColor: Color(0xff3F4245),
                      darkColor: Color(0xffC2C8CD),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: kBlueColor,
                    value: isAutoLogin,
                    onChanged: (bool? value) {
                      HapticFeedback.selectionClick();
                      if (value != null) {
                        setState(() {
                          isAutoLogin = value;
                        });
                      }
                    },
                  ),
                  Expanded(
                    child: CustomText(
                      text: S().nexttimeautologin,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      lightColor: Color(0xff3F4245),
                      darkColor: Color(0xffC2C8CD),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: kBlueColor,
                    value: readPrivatePolicy,
                    onChanged: (bool? value) {
                      HapticFeedback.selectionClick();
                      if (value != null) {
                        setState(() {
                          readPrivatePolicy = value;
                          alertReadPrivatePolicy = false;
                        });
                      }
                    },
                  ),
                  alertReadPrivatePolicy == false
                      ? CustomText(
                          text: S().readterm,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          lightColor: Color(0xff3F4245),
                          darkColor: Color(0xffC2C8CD),
                        )
                      : CustomText(
                          text: S().readterm,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          lightColor: Colors.red,
                          darkColor: Colors.red,
                        ),
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        var url = remoteConfig.getString("privacy_link");
                        print(url);
                        await canLaunch(url)
                            ? await launch(url)
                            : throw 'Could not launch $url';
                      },
                      child: RichText(
                        text: TextSpan(
                          text: S().policy,
                          style: TextStyle(
                              color: kBlueColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              EmailPwLoginButton(
                function: () async {
                  FocusScopeNode currentFocus = FocusScope.of(context);

                  if (_signUpEmailController.text.isNotEmpty &&
                      _signUpPasswordConfirmController.text.isNotEmpty &&
                      readPrivatePolicy == true) {
                    EasyLoading.show();

                    if (_signUpPasswordConfirmController.text !=
                            _signUpPasswordController.text ||
                        _signUpEmailController.text.contains("@") == false ||
                        _signUpEmailController.text.contains(".") == false) {
                      return EasyLoading.showToast(S().pleasecheck);
                    }

                    if (banChineseEmail.contains(
                        "@${_signUpEmailController.text.split("@").last}")) {
                      _signUpEmailController.clear();
                      return EasyLoading.showToast('🚫 ${S().nochineseemail}');
                    }

                    await authProviderFalse
                        .signUp(
                            _signUpEmailController.text.toLowerCase(),
                            _signUpPasswordConfirmController.text,
                            emailable,
                            isAutoLogin)
                        .then((currentUser) {
                      EasyLoading.dismiss();
                      print(
                          "user successfully signed up -- signupEmailScreen.dart");
                      widget.signUpPageController.jumpToPage(1);
                    }).catchError((onError) {
                      EasyLoading.dismiss();
                      EasyLoading.showError(onError);
                    });

                    currentFocus.unfocus();
                  } else {
                    EasyLoading.showToast(S().pleasecheck);
                  }
                  if (readPrivatePolicy == false) {
                    HapticFeedback.vibrate();
                    setState(() {
                      alertReadPrivatePolicy = true;
                    });
                  } else {
                    setState(() {
                      alertReadPrivatePolicy = false;
                    });
                  }
                },
                text: S().registerac,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
