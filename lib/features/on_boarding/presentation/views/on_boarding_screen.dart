import 'package:flutter/material.dart';
import 'package:fruite_app/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const routeName = 'on_boarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const OnBoardingViewBody()));
  }
}
