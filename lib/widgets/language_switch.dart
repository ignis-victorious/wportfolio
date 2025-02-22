// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
//  import FILE
import '../constants/app_icon.dart';
import '../extensions.dart';
import '../providers.dart';
import 'seo_text.dart';
// PARTS
// PROVIDERS
// -------------

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);
    // final String? test = Localizations.localeOf(context).languageCode;

    return PopupMenuButton(
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            value: 0,
            child: PopupLanguageSwitchItem(
              language: 'English',
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            value: 1,

            child: PopupLanguageSwitchItem(
              language: 'Italian',
              icon: AppIcon.it,
            ),
          ),

          // PopupMenuItem(child: const Text('Italian')),
          // PopupMenuItem(child: const Text('Engllish')),
        ];
      },
      initialValue: locale.value == 'en' ? 'En' : 'It',
      onSelected: (value) {
        if (value == 0) {
          ref.read(appLocaleProvider.notifier).changeLocale('en');
          // context.setLocale(const Locale('en'));
        } else {
          ref.read(appLocaleProvider.notifier).changeLocale('it');
        }
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.language, color: context.colorScheme.onSurface),
          const Gap(4),
          SEOText(
            locale.value == 'en' ? 'En' : 'It',
            // test == 'en' ? 'En' : 'It',
            // Localizations.localeOf(context).languageCode == 'en' ? 'En' : 'It',
          ),

          //  SEOText(locale.value=='en'?'En':'It')
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
