import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/utils/widget_themes/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      this.color,
      required this.text,
      this.height,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.mTop = 4,
      this.mBottom = 4,
      this.mLeft,
      this.mRight,
      this.textColor,
      this.borderRadius});

  final void Function()? onTap;
  final Color? color;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? mTop;
  final double? mBottom;
  final double? mLeft;
  final double? mRight;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            left: mLeft ?? 0,
            top: mTop ?? 4,
            bottom: mBottom ?? 4,
            right: mRight ?? 0),
        height: height ?? appheight(context) * 0.055,
        width: width ?? appWidth(context) * 0.3,
        decoration: BoxDecoration(
          color: color ?? AppTheme.light.primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? colorSchemeLight.onPrimary,
              fontSize: fontSize ?? AppTextSize.bodyMediumFont,
              fontWeight: fontWeight ?? FontWeight.w600,
              fontFamily: poppins(),
            ),
          ),
        ),
      ),
    );
  }
}
