import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';

class CustomTxtformfield extends StatelessWidget {
  const CustomTxtformfield(
      {super.key,
      required this.text,
      this.hintText,
      this.onSaved,
      this.keyboardType});
  final String text;
  final String? hintText;
  final bool obscureText = false;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        TextFormField(
          obscureText: obscureText,
          onSaved: onSaved,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              hintText: hintText,
              floatingLabelStyle: TextStyle(color: colorSchemeLight.onSurface),
              border: InputBorder.none,
              filled: true,
              fillColor: colorSchemeLight.secondaryContainer),
        ),
      ],
    );
  }
}
