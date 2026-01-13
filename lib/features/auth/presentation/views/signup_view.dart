import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';
import 'package:fruite_app/core/services/service_locator.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/signup_view_body_bloc_consumer.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).register),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
