import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_text_form_field.dart';
import 'package:fruite_app/core/utils/app_colors.dart';
import 'package:fruite_app/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: S.of(context).password,
      textInputType: TextInputType.text,
      icon: IconButton(
        icon: Icon(obscureText ? Icons.remove_red_eye : Icons.visibility_off),
        color: AppColors.textFieldIconColor,
        onPressed: () {
          obscureText = !obscureText;
          setState(() {});
        },
      ),
    );
  }
}
