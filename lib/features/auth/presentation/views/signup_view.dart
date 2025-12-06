import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';
import 'package:fruite_app/features/auth/presentation/widgets/signup_view_body.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).register),
      body: const SignupViewBody(),
    );
  }
}
