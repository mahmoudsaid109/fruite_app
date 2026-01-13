import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custom_progress_hud_widget.dart';
import 'package:fruite_app/core/helper_functions/error_snack_bar.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/signup_view_body.dart';

/// A BlocConsumer widget that listens to the SignupCubit and builds the SignupViewBody.
/// This widget handles state changes in the signup process.(handle using context )
class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.of(context).pop();
        }
        if (state is SignupFailure) {
          buildErrorSnackBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
          isLoading: state is SignupLoading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
