import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:official_starifly/constants/check_const.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/functions/auth/signup/get_random_profile_img.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/helpers/page_animation.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/widgets/auth/profile_confirm_button.dart';
import 'package:official_starifly/widgets/auth/user_avatar.dart';
import 'package:official_starifly/widgets/basic/custom_icon.dart';
import 'package:official_starifly/widgets/basic/custom_textfield.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpProfileBody extends StatefulWidget {
  final PageController signUpPageController;
  const SignUpProfileBody({Key? key, required this.signUpPageController})
      : super(key: key);

  @override
  _SignUpProfileBodyState createState() => _SignUpProfileBodyState();
}

class _SignUpProfileBodyState extends State<SignUpProfileBody> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userMottoController = TextEditingController();
  TextEditingController _userLeftWordController = TextEditingController();
  TextEditingController _userRightWordController = TextEditingController();
  TextEditingController _userProfileLinksController = TextEditingController();
  TextEditingController _instagramLinkController = TextEditingController();
  TextEditingController _facebookLinkController = TextEditingController();
  TextEditingController _twitterLinkController = TextEditingController();
  List _userProfileLinksInput = [];
  Map _userSocialLinksInput = {};
  String _selectedUserProfileImgUrl = "";
  String _backgroundChoiceName = "white";
  var _profileFormKey = GlobalKey<FormState>();

  //檢視用戶名可否用
  late Timer _debounce;
  int _debouncetime = 800;
  bool _isUniqueName = true;

  @override
  void initState() {
    final _authProviderFalse =
        Provider.of<AuthProvider>(context, listen: false);
    super.initState();
    if (_authProviderFalse.userDisplayName != null) {
      _userNameController.text = _authProviderFalse.userDisplayName.toString();
    }

    _selectedUserProfileImgUrl = getRandomProfileImg();
    print(_selectedUserProfileImgUrl);
    //檢視用戶名的Controller
    _userNameController.addListener(_onCheckNameUsable);
  }

  _onCheckNameUsable() {
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    if (_debounce.isActive) _debounce.cancel();
    _debounce = Timer(Duration(milliseconds: _debouncetime), () {
      if (_userNameController.text != "") {
        ///here you perform your search
        FirebaseFirestore.instance
            .collection("userProfile")
            .where("userDisplayName", isEqualTo: _userNameController.text)
            .snapshots()
            .listen((event) {
          if (event.docs.length == 0) {
            //資料庫中沒有紀錄，可使用
            if (_userNameController.text.toLowerCase().contains("starifly") ==
                false) {
              //沒有包含starifly字樣
              setState(() {
                _isUniqueName = true;
              });
            } else {
              if (_authProvider.userEmail?.contains("@starifly.") == true) {
                //starifly職員
                setState(() {
                  _isUniqueName = true;
                });
              } else {
                //包含starifly字樣
                setState(() {
                  _isUniqueName = false;
                });
              }
            }
          } else {
            //資料庫中已有人取這名字
            if (_userNameController.text == _authProvider.userDisplayName) {
              setState(() {
                //是原來尚未改的名字
                _isUniqueName = true;
              });
            } else {
              setState(() {
                _isUniqueName = false;
              });
            }
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _userMottoController.dispose();
    _userLeftWordController.dispose();
    _userRightWordController.dispose();
    _userProfileLinksController.dispose();
    _instagramLinkController.dispose();
    _facebookLinkController.dispose();
    _twitterLinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    final _themeChanger = Provider.of<ThemeChanger>(context, listen: true);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SingleChildScrollView(
        child: Form(
            key: _profileFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomText(
                    text: S().fillprofile,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    lightColor: Color(0xff3F4245),
                    darkColor: Color(0xffC2C8CD),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "${S().acname}:",
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            lightColor: kLightTextColor,
                            darkColor: kDarkTextColor),
                        SizedBox(height: 10),
                        CustomTextField(
                          hintTextInput: S().enteracname,
                          controllerInput: _userNameController,
                          validatorInput: (String? value) {
                            if (value!.isEmpty == true) {
                              return S().enterusername;
                            } else if (value.length < 4) {
                              return S().nametooshort;
                            } else if (value.length > 28) {
                              return S().nametoolong;
                            } else if (value.replaceAll(" ", "").length == 0) {
                              return S().enterusername;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomText(
                            text: "${S().acemail}:",
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            lightColor: kLightTextColor,
                            darkColor: kDarkTextColor),
                        Text(
                          _authProvider.userEmail ?? "",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Divider(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        CustomText(
                                            key: Key("followercount"),
                                            text: S().follower,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            lightColor: kLightTextColor,
                                            darkColor: kDarkTextColor),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        CustomText(
                                            key: Key("followingcount"),
                                            text: _authProvider
                                                .userFollowersCount
                                                .toString(),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            lightColor: kBlackTextColor,
                                            darkColor: kWhiteTextColor),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      HapticFeedback.selectionClick();
                                      // String _pickedImageUrl =
                                      //     await Navigator.push(
                                      //   context,
                                      //   CustomPageRouteBuilder(
                                      //     widget: PickMediaScreen(
                                      //       selectChoice: 'image',
                                      //     ),
                                      //   ),
                                      // );

                                      // if (_pickedImageUrl != null) {
                                      //   setState(() {
                                      //     _selectedUserProfileImgUrl =
                                      //         _pickedImageUrl;
                                      //   });
                                      // }
                                    },
                                    child: Column(
                                      children: [
                                        UserAvatar(
                                          avatarUrlInput:
                                              _selectedUserProfileImgUrl,
                                          widthInput: 115,
                                          heightInput: 115,
                                          borderColor: Colors.transparent,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _selectedUserProfileImgUrl =
                                                  _authProvider
                                                          .userProfileImgURL ??
                                                      getRandomProfileImg();
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              FeatherIcons.xCircle,
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        CustomText(
                                            text: S().following,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            lightColor: kDarkTextColor,
                                            darkColor: kLightTextColor),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        CustomText(
                                            text: _authProvider
                                                .userFollowingCount
                                                .toString(),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            lightColor: kBlackTextColor,
                                            darkColor: kWhiteTextColor),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      textAlignInput: TextAlign.end,
                                      controllerInput: _userLeftWordController,
                                      hintTextInput: S().representword,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    color: _themeChanger.themeMode ==
                                            ThemeMode.dark
                                        ? kLightTextColor
                                        : kDarkTextColor,
                                    width: 1.2,
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      textAlignInput: TextAlign.start,
                                      controllerInput: _userRightWordController,
                                      hintTextInput: S().representword,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              CustomTextField(
                                textAlignInput: TextAlign.center,
                                controllerInput: _userMottoController,
                                hintTextInput: S().representsentence,
                              ),
                              SizedBox(height: 12),
                              Column(
                                children: [
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.all(0),
                                    shrinkWrap: true,
                                    itemCount: _userProfileLinksInput.length,
                                    itemBuilder:
                                        (BuildContext context, linkIndex) {
                                      return Stack(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              HapticFeedback.selectionClick();
                                              try {
                                                if (await canLaunch(
                                                    _userProfileLinksInput[
                                                        linkIndex])) {
                                                  await launch(
                                                      _userProfileLinksInput[
                                                          linkIndex]);
                                                } else {
                                                  EasyLoading.showError(
                                                      S().malformLink);
                                                  // throw 'Could not launch $_userProfileLinksInput[linkIndex] -- edit profile.dart';
                                                }
                                              } catch (e) {
                                                EasyLoading.showError(
                                                    S().malformLink);
                                              }
                                            },
                                            child: Center(
                                              child: Text(
                                                _userProfileLinksInput[
                                                    linkIndex],
                                                style: TextStyle(
                                                    color: Colors.blueAccent),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                _userProfileLinksInput
                                                    .removeAt(linkIndex);
                                              });
                                            },
                                            child: Icon(
                                              FeatherIcons.xCircle,
                                              color: Colors.redAccent,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(height: 12),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Provider.of<ThemeChanger>(context)
                                                .themeMode ==
                                            ThemeMode.dark
                                        ? kDarkContainerColor
                                        : kLightContainerColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomIcon(
                                          iconInput: FeatherIcons.link,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller:
                                              _userProfileLinksController,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: false,
                                              hintText: "${S().addlink}...",
                                              hintStyle: TextStyle(
                                                  color:
                                                      Provider.of<ThemeChanger>(
                                                                      context)
                                                                  .themeMode ==
                                                              ThemeMode.dark
                                                          ? kDarkTextColor
                                                          : kLightTextColor)),
                                          onEditingComplete: () async {
                                            HapticFeedback.selectionClick();
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            bool _checkLaunch = await canLaunch(
                                                _userProfileLinksController
                                                    .text);
                                            if (_checkLaunch == true) {
                                              if (!currentFocus
                                                  .hasPrimaryFocus) {
                                                currentFocus.unfocus();
                                              }

                                              if (_userProfileLinksInput
                                                      .length <
                                                  3) {
                                                setState(() {
                                                  _userProfileLinksInput.add(
                                                      _userProfileLinksController
                                                          .text);
                                                  _userProfileLinksController
                                                      .clear();
                                                  _userProfileLinksController
                                                          .value =
                                                      TextEditingValue(
                                                          text: "https://");
                                                });
                                              } else {
                                                EasyLoading.showError(
                                                    "超出可加入連結上限");
                                              }
                                            } else {
                                              EasyLoading.showError(
                                                  "連結格式不正確，請檢查");
                                              if (!currentFocus
                                                  .hasPrimaryFocus) {
                                                currentFocus.unfocus();
                                              }
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText(
                                    text: "${S().socialmedialink}:",
                                    lightColor: kLightTextColor,
                                    darkColor: kDarkTextColor),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Provider.of<ThemeChanger>(context)
                                                .themeMode ==
                                            ThemeMode.dark
                                        ? kDarkContainerColor
                                        : kLightContainerColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomIcon(
                                          iconInput: FeatherIcons.instagram,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller: _instagramLinkController,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: false,
                                              hintText: "${S().addlink}...",
                                              hintStyle: TextStyle(
                                                  color:
                                                      Provider.of<ThemeChanger>(
                                                                      context)
                                                                  .themeMode ==
                                                              ThemeMode.dark
                                                          ? kDarkTextColor
                                                          : kLightTextColor)),
                                          onChanged: (value) {
                                            if (!value.contains(
                                                instragramlinkprefix)) {
                                              HapticFeedback.vibrate();
                                              EasyLoading.showToast(S()
                                                  .startwith(
                                                      instragramlinkprefix));
                                              _userSocialLinksInput[
                                                      'instagram'] =
                                                  instragramlinkprefix;
                                            }

                                            _userSocialLinksInput['instagram'] =
                                                value;
                                            print(value);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                    color: Provider.of<ThemeChanger>(context)
                                                .themeMode ==
                                            ThemeMode.dark
                                        ? kDarkContainerColor
                                        : kLightContainerColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomIcon(
                                          iconInput: FeatherIcons.facebook,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller: _facebookLinkController,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: false,
                                              hintText: "${S().addlink}...",
                                              hintStyle: TextStyle(
                                                  color:
                                                      Provider.of<ThemeChanger>(
                                                                      context)
                                                                  .themeMode ==
                                                              ThemeMode.dark
                                                          ? kDarkTextColor
                                                          : kLightTextColor)),
                                          onChanged: (value) {
                                            if (!value
                                                .contains(facebooklinkprefix)) {
                                              HapticFeedback.vibrate();
                                              EasyLoading.showToast(S()
                                                  .startwith(
                                                      facebooklinkprefix));
                                              _userSocialLinksInput[
                                                      'facebook'] =
                                                  facebooklinkprefix;
                                            }
                                            _userSocialLinksInput['facebook'] =
                                                value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                    color: Provider.of<ThemeChanger>(context)
                                                .themeMode ==
                                            ThemeMode.dark
                                        ? kDarkContainerColor
                                        : kLightContainerColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomIcon(
                                          iconInput: FeatherIcons.twitter,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          controller: _twitterLinkController,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isDense: false,
                                              hintText: "${S().addlink}...",
                                              hintStyle: TextStyle(
                                                  color:
                                                      Provider.of<ThemeChanger>(
                                                                      context)
                                                                  .themeMode ==
                                                              ThemeMode.dark
                                                          ? kDarkTextColor
                                                          : kLightTextColor)),
                                          onChanged: (value) {
                                            if (!value
                                                .contains(twitterlinkprefix)) {
                                              HapticFeedback.vibrate();
                                              EasyLoading.showToast(S()
                                                  .startwith(
                                                      twitterlinkprefix));
                                              _userSocialLinksInput['twitter'] =
                                                  twitterlinkprefix;
                                            }
                                            _userSocialLinksInput['twitter'] =
                                                value;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ConfirmButton(
                        text: S().finish,
                        icon: FeatherIcons.check,
                        function: () {
                          HapticFeedback.selectionClick();
                          HapticFeedback.lightImpact();

                          if (_profileFormKey.currentState!.validate()) {
                            //更新用戶名稱
                            _authProvider.changeUserDisplayName =
                                _userNameController.text.replaceAll(" ", "");
                            //更新用戶左詞
                            _authProvider.changeUserLeftWord =
                                _userLeftWordController.text;
                            //更新用戶右詞
                            _authProvider.changeUserRightWord =
                                _userRightWordController.text;
                            //更新用戶Motto
                            _authProvider.changeUserMotto =
                                _userMottoController.text;
                            //更新links
                            _authProvider.changeUserProfileLinks =
                                _userProfileLinksInput;
                            //更新Social links
                            _authProvider.changeUserSocialLinks =
                                _userSocialLinksInput;
                            //更新用戶照片
                            _authProvider.changeUserProfileImgURL =
                                _selectedUserProfileImgUrl;
                            //更新用戶背景漸層
                            _authProvider.changeUserProfileBackground =
                                _backgroundChoiceName
                                    .toString()
                                    .split('.')
                                    .last;
                            _authProvider.updateUserProfile();
                            Navigator.pop(context);
                          }
                        }),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ],
            )),
      ),
    );
  }
}
