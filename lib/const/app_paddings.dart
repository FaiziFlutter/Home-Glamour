import 'package:flutter/material.dart';
import 'package:home_glamour/const/global_var.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding(
      {super.key,
      this.top,
      this.bottom,
      this.left,
      this.right,
      required this.child});
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? appheight(context) * 0.04,
          bottom: bottom ?? appheight(context) * 0.04,
          left: appWidth(context) * 0.06,
          right: appWidth(context) * 0.06),
      child: child,
    );
  }
}
