import 'package:flutter/material.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomText extends StatefulWidget {
  final String text;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final Color? lightColor;
  final Color? darkColor;
  final TextAlign? textAlignInput;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final int? wordlimit;
  final TextDecoration? decoration;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontWeight,
      this.fontFamily,
      this.fontSize,
      this.lightColor,
      this.darkColor,
      this.textAlignInput,
      this.textOverflow,
      this.maxLines,
      this.wordlimit,
      this.decoration})
      : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Text(
      widget.wordlimit == null
          ? widget.text
          : widget.text.substring(0, widget.wordlimit) + '...',
      textAlign: widget.textAlignInput,
      style: TextStyle(
          color: themeChanger.themeMode == ThemeMode.dark
              ? widget.darkColor ?? kDarkTextColor
              : widget.lightColor ?? kLightTextColor,
          fontWeight: widget.fontWeight ?? FontWeight.normal,
          fontSize: widget.fontSize ?? 16,
          fontFamily: widget.fontFamily,
          decoration: widget.decoration),
      overflow: widget.textOverflow,
      maxLines: widget.maxLines,
    );
  }
}
