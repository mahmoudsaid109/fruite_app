import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custom_button.dart';
import 'package:fruite_app/core/utils/app_colors.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';
import 'package:fruite_app/generated/l10n.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          child: CustomButton(text: S.of(context).startNow, onPressed: () {
            // Navigator.of(context).pushReplacementNamed(
            //   SigninView.routeName,
            // );
          }),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
