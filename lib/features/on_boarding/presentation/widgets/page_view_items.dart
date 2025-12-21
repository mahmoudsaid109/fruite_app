import 'package:flutter/material.dart';
import 'package:fruite_app/core/services/shared_prefrences_senglton.dart';
import 'package:fruite_app/core/utils/app_text_styles.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruite_app/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title, required this.isVisible,
  });
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.of(context).pushReplacementNamed(
                      SignInView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      S.of(context).skip,
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5456),
            ),
          ),
        )
      ],
    );
  }
}