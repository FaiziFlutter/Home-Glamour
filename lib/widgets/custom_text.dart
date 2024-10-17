import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textAlign,
    this.left,
    this.right,
    this.overflow,
    this.maxLines,
    this.bottom,
    this.top,
  });
  final String text;
  final Color? backgroundColor;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 2,
        bottom: bottom ?? 2,
      ),
      child: Text(
        text,
        softWrap: true,
        textAlign: textAlign ?? TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          backgroundColor: backgroundColor,
          color: color ?? colorSchemeLight.onSurface,
          fontFamily: fontFamily ?? poppins(),
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
        ),
      ),
    );
  }
}
