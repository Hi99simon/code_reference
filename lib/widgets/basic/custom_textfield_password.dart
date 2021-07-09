import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final FocusNode? focusNode;
  final String? hintTextInput;
  final TextEditingController? controllerInput;
 
  final TextInputType? textInputTypeInput;
  

  const CustomTextFieldPassword({
    Key? key,
    this.focusNode,
    this.hintTextInput,
    this.controllerInput,
    
    this.textInputTypeInput,
    
  }) : super(key: key);
  @override
  _CustomTextFieldPasswordState createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool viewPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Provider.of<ThemeChanger>(context).themeMode == ThemeMode.dark
              ? kDarkContainerColor
              : kLightContainerColor,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: widget.focusNode,
                keyboardType: widget.textInputTypeInput,
                controller: widget.controllerInput,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: false,
                    hintText: widget.hintTextInput,
                    hintStyle: TextStyle(
                        color: Provider.of<ThemeChanger>(context).themeMode ==
                                ThemeMode.dark
                            ? kDarkTextColor
                            : kLightTextColor)),
                obscureText: viewPassword,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  viewPassword == true
                      ? viewPassword = false
                      : viewPassword = true;
                });
              },
              child: viewPassword == true
                  ? Icon(
                      FeatherIcons.eye,
                      size: 24,
                      color: Color(0xff888EA0),
                    )
                  : Icon(
                      FeatherIcons.eyeOff,
                      size: 24,
                      color: Color(0xff888EA0),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
