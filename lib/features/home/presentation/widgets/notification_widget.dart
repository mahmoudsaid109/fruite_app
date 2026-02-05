import 'package:flutter/material.dart';
import 'package:fruite_app/core/utils/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const ShapeDecoration(
        color: Color(0XFFEEF8ED),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}
