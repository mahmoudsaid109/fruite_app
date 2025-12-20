import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruite_app/core/global_widgets/custom_button.dart';
import 'package:fruite_app/core/global_widgets/custome_text_form_field.dart';
import 'package:fruite_app/core/utils/app_colors.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruite_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:fruite_app/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomeTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: S.of(context).fullName,
                textInputType: TextInputType.text,
                icon: Icon(Icons.person, color: AppColors.textFieldIconColor),
              ),
              SizedBox(height: kTopPaddding),
              CustomeTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                textInputType: TextInputType.emailAddress,
                icon: Icon(Icons.email, color: AppColors.textFieldIconColor),
              ),
              SizedBox(height: kTopPaddding),
              CustomeTextFormField(
                onSaved: (value) {
                  password = value!;
                },
                hintText: S.of(context).password,
                textInputType: TextInputType.text,
                icon: Icon(
                  Icons.remove_red_eye,
                  color: AppColors.textFieldIconColor,
                ),
              ),
              SizedBox(height: kTopPaddding),
              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate() && isTermsAccepted) {
                    formKey.currentState!.save();
                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                      email,
                      password,
                      userName,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: S.of(context).createNewAccount,
              ),
              SizedBox(height: 24),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
