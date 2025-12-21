import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custom_progress_hud_widget.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/signin_view_body.dart';

class SignBlocConsumerWidget extends StatelessWidget {
  const SignBlocConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignCubit, SignState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomProgressHUD(
          isLoading: state is SignLoading ? true : false,
          child: const SignInViewBody(),
        );
      },
    );
  }
}


