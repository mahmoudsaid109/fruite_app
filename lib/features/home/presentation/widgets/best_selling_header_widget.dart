import 'package:flutter/material.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';
import 'package:fruite_app/features/best_selling_fruites/presentation/views/best_selling_view.dart';
import 'package:fruite_app/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BestSellingView.routeName),
      child: Row(
        children: [
          Text(
            S.of(context).bestSelling,
            textAlign: TextAlign.right,
            style: TextStyles.bold16,
          ),
          const Spacer(),
          Text(
            S.of(context).more,
            textAlign: TextAlign.center,
            style: TextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
        ],
      ),
    );
  }
}
