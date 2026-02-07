import 'package:flutter/material.dart';
import 'package:fruite_app/core/global_widgets/custome_appbar.dart';
import 'package:fruite_app/features/best_selling_fruites/presentation/widgets/best_selling_view_body.dart';
import 'package:fruite_app/generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'best-selling-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).bestSelling),
      body: BestSellingViewBody(),
    );
  }
}