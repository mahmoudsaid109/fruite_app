import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';
import 'package:fruite_app/features/auth/presentation/widgets/login_view_body.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const routeName = 'signin_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).login),

      body: const LoginViewBody(),
    );
  }


}
