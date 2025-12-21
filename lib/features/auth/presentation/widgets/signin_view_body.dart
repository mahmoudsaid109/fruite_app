import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custom_button.dart';
import 'package:fruite_app/core/global_widgets/custome_text_form_field.dart';
import 'package:fruite_app/core/global_widgets/password_field.dart';
import 'package:fruite_app/core/utils/app_colors.dart';
import 'package:fruite_app/core/utils/app_images.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/presentation/widgets/dont_have_an_account.dart';
import 'package:fruite_app/features/auth/presentation/widgets/or_widget.dart';
import 'package:fruite_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:fruite_app/generated/l10n.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomeTextFormField(
                hintText: S.of(context).email,
                textInputType: TextInputType.emailAddress,
                icon: Icon(Icons.email, color: AppColors.textFieldIconColor),
              ),
              SizedBox(height: kTopPaddding),
              PasswordField(
                onSaved: (value) {
                  // password = value!;
                },
              ),
              SizedBox(height: kTopPaddding),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).forgotPassword,
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 33),
              CustomButton(text: S.of(context).login, onPressed: () {}),
              SizedBox(height: 33),
              DontHaveAnAccountWidget(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: kTopPaddding),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesGoogleIcon,
                title: S.of(context).loginWithGoogle,
              ),
              const SizedBox(height: 16),
              Platform.isIOS
                  ? Column(
                    children: [
                      SocialLoginButton(
                        onPressed: () {},
                        image: Assets.imagesApplIcon,
                        title: S.of(context).loginWithApple,
                      ),
                      const SizedBox(height: 16),
                    ],
                  )
                  : SizedBox(),
              SizedBox(height: 24),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesFacebookIcon,
                title: S.of(context).loginWithFacebook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
