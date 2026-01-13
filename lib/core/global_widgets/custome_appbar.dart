  import 'package:flutter/material.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      centerTitle: true,
      title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
    );
  }