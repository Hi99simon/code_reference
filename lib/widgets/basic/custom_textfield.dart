import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:official_starifly/constants/color_const.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class CustomTextField extends StatefulWidget {
  final FocusNode? focusNode;
  final String? hintTextInput;
  final TextEditingController? controllerInput;
  final Widget? trailingWidgetInput;
  final Widget? leadingWidgetInput;
  final TextInputType? textInputTypeInput;
  final String? Function(String?)? validatorInput;
  final TextAlign? textAlignInput;
  final TextAlignVertical? textAlignVertical;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final int? maxline;
  final int? minline;
  final int? maxlength;
  final Function(String)? onSubmitted;
  final Color? lightColor;
  final Color? darkColor;
  final bool? autofocus;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelTextInput;
  final TextStyle? labelStyle;
  final TextCapitalization? textCapitalization;
  final bool? isDense;
  final bool? showCountertext;

  const CustomTextField({
    Key? key,
    this.focusNode,
    this.hintTextInput,
    this.controllerInput,
    this.trailingWidgetInput,
    this.leadingWidgetInput,
    this.textInputTypeInput,
    this.validatorInput,
    this.textAlignInput,
    this.textAlignVertical,
    this.hintStyle,
    this.style,
    this.maxline,
    this.minline,
    this.maxlength,
    this.onSubmitted,
    this.lightColor,
    this.darkColor,
    this.autofocus,
    this.onChange,
    this.inputFormatters,
    this.labelTextInput,
    this.labelStyle,
    this.textCapitalization,
    this.isDense,
    this.showCountertext,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Provider.of<ThemeChanger>(context).themeMode == ThemeMode.dark
              ? widget.darkColor ?? kDarkContainerColor
              : widget.lightColor ?? kLightContainerColor,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget.leadingWidgetInput ?? Container(),
            Expanded(
              child: TextFormField(
                textAlignVertical: widget.textAlignVertical,
                focusNode: widget.focusNode,
                textCapitalization:
                    widget.textCapitalization ?? TextCapitalization.none,
                inputFormatters: widget.inputFormatters ?? [],
                autofocus: widget.autofocus ?? false,
                textAlign: widget.textAlignInput ?? TextAlign.start,
                validator: widget.validatorInput,
                keyboardType: widget.textInputTypeInput,
                controller: widget.controllerInput,
                decoration: InputDecoration(
                  counterText: widget.showCountertext == true
                      ? "${widget.controllerInput?.text.length}/${widget.maxlength}"
                      : "",
                  border: InputBorder.none,
                  isDense: widget.isDense,
                  hintText: widget.hintTextInput,
                  labelText: widget.labelTextInput,
                  labelStyle: widget.labelStyle ??
                      TextStyle(
                          color: Provider.of<ThemeChanger>(context).themeMode ==
                                  ThemeMode.dark
                              ? Colors.grey[450]
                              : Colors.grey),
                  hintStyle: widget.hintStyle ??
                      TextStyle(
                          color: Provider.of<ThemeChanger>(context).themeMode ==
                                  ThemeMode.dark
                              ? kDarkTextColor
                              : kLightTextColor),
                ),
                style: widget.style,
                maxLines: widget.maxline,
                minLines: widget.minline,
                maxLength: widget.maxlength,
                onFieldSubmitted: widget.onSubmitted ?? (value) {},
                onChanged: widget.onChange ?? (value) {},
              ),
            ),
            widget.trailingWidgetInput ?? Container(),
          ],
        ),
      ),
    );
  }
}
