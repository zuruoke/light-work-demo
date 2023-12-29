import 'package:flutter/material.dart';
import 'package:lightwork/utils/styles/text_style.dart';

class DefaultTextWidget extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double fontSize;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final int? maxLines;

  const DefaultTextWidget({
    super.key,
    required this.text,
    this.fontWeight,
    this.textColor,
    required this.fontSize,
    this.textAlign,
    this.maxLines,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: defaultTextStyle(
        fontSize,
        color: textColor ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.w100,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
