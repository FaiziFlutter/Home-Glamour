import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.actions, required this.text});
  final List<Widget>? actions;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: actions,
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}
