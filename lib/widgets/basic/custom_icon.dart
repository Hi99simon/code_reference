import 'package:flutter/material.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconInput;
  final Color? lightColor;
  final Color? darkColor;
  final double? iconSize;

  const CustomIcon({
    Key? key,
    required this.iconInput,
    this.lightColor,
    this.darkColor,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconInput,
      size: iconSize ?? 16,
      color: Provider.of<ThemeChanger>(context).themeMode == ThemeMode.dark
          ? darkColor
          : lightColor,
    );
  }
}
