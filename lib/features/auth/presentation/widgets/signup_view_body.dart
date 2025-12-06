import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_text_form_field.dart';
import 'package:fruite_app/core/utils/app_colors.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomeTextFormField(
              hintText: S.of(context).fullName,
              textInputType: TextInputType.text,
              icon: Icon(Icons.person, color: AppColors.textFieldIconColor),
            ),
            SizedBox(height: kTopPaddding),
            CustomeTextFormField(
              hintText: S.of(context).email,
              textInputType: TextInputType.emailAddress,
              icon: Icon(Icons.email, color: AppColors.textFieldIconColor),
            ),
            SizedBox(height: kTopPaddding),
            CustomeTextFormField(
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
          ],
        ),
      ),
    );
  }
}
