import 'package:flutter/material.dart';
import 'package:fruite_app/features/home/presentation/widgets/home_view_body.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});
static const routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: const HomeViewBody()),
    );
  }
}