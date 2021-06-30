import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';
import 'package:provider/provider.dart';

class AuthTopBar extends StatefulWidget {
  final Function() changeEnglish;
  final Function() changeChinese;
  const AuthTopBar(
      {Key? key, required this.changeEnglish, required this.changeChinese})
      : super(key: key);

  @override
  _AuthTopBarState createState() => _AuthTopBarState();
}

class _AuthTopBarState extends State<AuthTopBar> {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            themeMode == ThemeMode.dark
                ? "assets/app_dark_logo.png"
                : "assets/app_light_logo.png",
            height: 24,
          ),
        ),
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    HapticFeedback.selectionClick();
                    print(themeMode);
                    if (themeMode == ThemeMode.dark) {
                      themeChanger.changeThemeMode(ThemeMode.light);

                      print(themeMode);
                    } else {
                      themeChanger.changeThemeMode(ThemeMode.dark);
                      print(themeMode);
                    }
                  },
                  child: Icon(themeMode == ThemeMode.dark
                      ? FeatherIcons.sun
                      : FeatherIcons.moon),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Intl.getCurrentLocale().toString().substring(0, 2) != "zh"
                    ? GestureDetector(
                        onTap: widget.changeChinese,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: CustomText(
                              text: "中",
                              darkColor: kWhiteTextColor,
                              lightColor: kBlackTextColor,
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: widget.changeEnglish,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Center(
                            child: CustomText(
                                text: "EN",
                                darkColor: kWhiteTextColor,
                                lightColor: kBlackTextColor),
                          ),
                        ),
                      ),
              ],
            ))
      ],
    );
  }
}
