import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custom_progress_hud_widget.dart';
import 'package:fruite_app/core/helper_functions/error_snack_bar.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/signin_view_body.dart';
import 'package:fruite_app/features/home/presentation/views/home_layout_view.dart';

class SignBlocConsumerWidget extends StatelessWidget {
  const SignBlocConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigInCubit, SignState>(
      listener: (context, state) {
        if (state is SignSuccess) {
          Navigator.of(context).pushReplacementNamed(HomeLayoutView.routeName);
        }
        if (state is SignFailure) {
          buildErrorSnackBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
          isLoading: state is SignLoading ? true : false,
          child: const SignInViewBody(),
        );
      },
    );
  }
}
