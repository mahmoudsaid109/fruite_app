import 'package:flutter/material.dart';
import 'package:fruite_app/generated/l10n.dart';

import '../../../../core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });
}

List<BottomNavigationBarEntity> bottomNavigationBarItems(BuildContext context) => [
  BottomNavigationBarEntity(
    activeImage: Assets.imagesVuesaxBoldHome,
    inActiveImage: Assets.imagesVuesaxOutlineHome,
    name: S.of(context).home,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesVuesaxBoldProducts,
    inActiveImage: Assets.imagesVuesaxOutlineProducts,
    name: S.of(context).products,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesVuesaxBoldShoppingCart,
    inActiveImage: Assets.imagesVuesaxOutlineShoppingCart,
    name: S.of(context).shoppingCart,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesVuesaxBoldUser,
    inActiveImage: Assets.imagesVuesaxOutlineUser,
    name: S.of(context).myAccount,
  ),
];

