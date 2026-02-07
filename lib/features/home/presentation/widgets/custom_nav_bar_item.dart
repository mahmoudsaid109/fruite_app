import 'package:flutter/material.dart';
import 'package:fruite_app/features/home/domain/entities/bottom_nav_bar_entity.dart';
import 'package:fruite_app/features/home/presentation/widgets/active_nav_bar_item.dart';
import 'package:fruite_app/features/home/presentation/widgets/inactive_nav_bar_item.dart';


class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeImage,
            text: bottomNavigationBarEntity.name,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}