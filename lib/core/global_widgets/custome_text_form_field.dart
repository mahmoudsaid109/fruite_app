import 'package:flutter/material.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
     this.icon,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: icon,
        filled: true,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0xFF949D9E)),
        hintText: hintText,
        fillColor: Color(0xFFF9FAFA),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(width: 1, color: Color(0xFFF9FAFA)),
    );
  }
}
