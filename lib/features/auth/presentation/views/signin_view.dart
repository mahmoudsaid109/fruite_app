import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';
import 'package:fruite_app/core/services/service_locator.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/sign_bloc_consumer_widget.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const routeName = 'signin_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).login),
        body: SignInBlocConsumerWidget(),
      ),
    );
  }
}
