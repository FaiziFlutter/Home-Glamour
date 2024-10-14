import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/widgets/custom_text.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, this.actions, required this.text});
  final List<Widget>? actions;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: actions,
      title: CustomText(
        text: text,
        color: colorSchemeLight.onSurface,
        fontFamily: poppins(),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
