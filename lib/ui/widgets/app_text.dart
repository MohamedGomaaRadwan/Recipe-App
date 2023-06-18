import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';

class AppText extends StatelessWidget {
  AppText({
    super.key,
    this.color,
    this.fontSize = 15.0,
    this.text,
    this.fontFamily,
    this.decoration,
    this.overflow = TextOverflow.ellipsis,
    this.textStyle,
    this.softWrap = false,
    this.maxLines = 20,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    this.isUpper = false,
  });

  final Color? color;
  final double? fontSize;
  final String? text;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  final bool? isUpper;
  final bool? softWrap;
  final int maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    textStyle = textStyle ??
        TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: color ?? AppColors.black,
          decoration: decoration,
        );
    textStyle = textStyle!.copyWith(
        color: color ?? AppColors.black,
        fontSize: fontSize,
        fontWeight: fontWeight);

    return Text(
      text ?? '',
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      style: textStyle,
    );
  }
}
