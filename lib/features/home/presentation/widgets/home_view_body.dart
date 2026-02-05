import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/search_text_field.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/home/presentation/widgets/best_selling_grid_view.dart';
import 'package:fruite_app/features/home/presentation/widgets/best_selling_header_widget.dart';
import 'package:fruite_app/features/home/presentation/widgets/custom_home_appbar.dart';
import 'package:fruite_app/features/home/presentation/widgets/featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPaddding),
                CustomHomeAppBar(),
                SizedBox(height: kTopPaddding),
                SearchTextField(),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                BestSellingHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          BestSellingGridView(),
        ],
      ),
    );
  }
}
