import 'package:flutter/material.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/widgets/basic/custom_icon.dart';
import 'package:official_starifly/widgets/basic/custom_widget.dart';

class EmailPwLoginButton extends StatefulWidget {
  final Function() function;
  final String text;
  const EmailPwLoginButton({
    required this.function,
    required this.text,
  });
  @override
  _EmailPwLoginButtonState createState() => _EmailPwLoginButtonState();
}

class _EmailPwLoginButtonState extends State<EmailPwLoginButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff698BFC), Color(0xff65B3FC)],
              stops: [0.3, 0.8]),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Center(
                      child: CustomText(
                        text: widget.text,
                        fontWeight: FontWeight.bold,
                        lightColor: Colors.white,
                        darkColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomIcon(
                    iconInput: Icons.arrow_forward,
                    lightColor: Colors.white,
                    darkColor: Colors.white,
                    iconSize: 24,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
