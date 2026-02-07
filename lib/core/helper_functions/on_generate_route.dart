import 'package:flutter/material.dart';
import 'package:fruite_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruite_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruite_app/features/best_selling_fruites/presentation/views/best_selling_view.dart';
import 'package:fruite_app/features/home/presentation/views/home_layout_view.dart';

import '../../features/on_boarding/presentation/views/on_boarding_screen.dart';
import '../../features/splash/presentation/views/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnBoardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case HomeLayoutView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeLayoutView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView ());
    default:
      return MaterialPageRoute(
        builder:
            (context) =>
                const Scaffold(body: Center(child: Text('404 - Not Found'))),
      );
  }
}
