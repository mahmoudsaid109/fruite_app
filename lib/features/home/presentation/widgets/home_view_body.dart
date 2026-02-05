import 'package:flutter/material.dart';
import 'package:fruite_app/features/home/presentation/widgets/custom_home_appbar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        )
      ],
    );
  }
}