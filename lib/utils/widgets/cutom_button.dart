import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/utils/theme/theme.dart';

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
      this.top = 4,
      this.bottom = 4,
      this.left,
      this.right,
      this.textColor,
      this.borderRadius});

  final void Function()? onTap;
  final Color? color;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            left: left ?? 0,
            top: top ?? 4,
            bottom: bottom ?? 4,
            right: right ?? 0),
        height: height ?? appheight(context) * 0.055,
        width: width ?? appWidth(context) * 0.3,
        decoration: BoxDecoration(
          color: color ?? AppTheme.light.primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? colorSchemeLight.onPrimary,
              fontSize: fontSize ?? AppTextSize.bodyMediumFont,
              fontWeight: fontWeight,
              fontFamily: poppins(),
            ),
          ),
        ),
      ),
    );
  }
}
