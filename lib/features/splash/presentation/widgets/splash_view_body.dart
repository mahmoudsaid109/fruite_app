import 'package:flutter/material.dart';
import 'package:fruite_app/core/services/shared_prefrences_senglton.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruite_app/features/on_boarding/presentation/views/on_boarding_screen.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final la = Directionality.of(context) == TextDirection.ltr;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              la ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, SignInView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
      }
    });
  }
}
