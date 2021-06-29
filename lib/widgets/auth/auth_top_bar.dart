import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';
import 'package:provider/provider.dart';

class AuthTopBar extends StatefulWidget {
  const AuthTopBar({Key? key}) : super(key: key);

  @override
  _AuthTopBarState createState() => _AuthTopBarState();
}

class _AuthTopBarState extends State<AuthTopBar> {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    final themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(themeMode == ThemeMode.dark
                  ? "assets/app_dark_logo.png"
                  : "assets/app_light_logo.png"),
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
                    Intl.getCurrentLocale().toString().substring(0, 2) != "zh"
                        ? GestureDetector(
                            onTap: () {
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
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: CustomText(text: "中"),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Center(
                                child: CustomText(
                                  text: "EN",
                                ),
                              ),
                            ),
                          ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
