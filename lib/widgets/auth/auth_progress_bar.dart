import 'package:flutter/material.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';

class AuthProgressBar extends StatefulWidget {
  final int currentSignUpPageView;

  const AuthProgressBar({Key? key, required this.currentSignUpPageView})
      : super(key: key);

  @override
  _AuthProgressBarState createState() => _AuthProgressBarState();
}

class _AuthProgressBarState extends State<AuthProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: displayProgressName(),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              lightColor: kBlackTextColor,
              darkColor: kWhiteTextColor,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.35,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: widget.currentSignUpPageView == 0 ? 3 : 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color: widget.currentSignUpPageView == 0
                                ? kBlueColor
                                : kGreyColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        height: 5,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: widget.currentSignUpPageView == 1 ? 3 : 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color: widget.currentSignUpPageView == 1
                                ? kBlueColor
                                : kGreyColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        height: 5,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: widget.currentSignUpPageView == 2 ? 3 : 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color: widget.currentSignUpPageView == 2
                                ? kBlueColor
                                : kGreyColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        height: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String displayProgressName() {
    if (widget.currentSignUpPageView == 1) {
      return S().pleaseverifyemail;
    } else if (widget.currentSignUpPageView == 2) {
      return S().ac;
    } else {
      return S().register;
    }
  }
}
