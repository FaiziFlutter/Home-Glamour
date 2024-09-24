import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/widgets/custom_text.dart';

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
        Align(
          alignment: Alignment.centerLeft,
          child: CustomText(
            text: text,
            left: 0,
            top: 4,
            bottom: 4,
            fontWeight: FontWeight.bold,
            fontFamily: poppins(),
            color: colorSchemeLight.outline,
          ),
        ),
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
