import 'package:flutter/material.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';
import 'package:fruite_app/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
        SizedBox(width: 18),
        Text(
          S.of(context).or,
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16,
        ),
        SizedBox(width: 18),
        Expanded(child: Divider(color: Color(0xFFDCDEDE))),
      ],
    );
  }
}
