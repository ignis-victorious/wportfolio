// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/constants/app_icon.dart';
//  import FILES
import 'seo_text.dart';
// PARTS
// PROVIDERS
// -------------

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              language: 'English',
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              language: 'Italian',
              icon: AppIcon.it,
            ),
          ),

          // PopupMenuItem(child: const Text('Italian')),
          // PopupMenuItem(child: const Text('Engllish')),
        ];
      },
      child: Row(
        children: <Widget>[
           Icon(Icons.language, color: context.colorScheme.,)

        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  final String language;
  final String icon;

  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        const Gap(8),
        SEOText(language),
      ],
    ); // Row
  }
}
