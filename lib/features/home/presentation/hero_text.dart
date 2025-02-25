// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//  import FILES
import '../../../style/app_size.dart';
import '../../../widgets/seo_text.dart';
import 'package:wportfolio/extensions.dart';

// PARTS
// PROVIDERS
// -------------

// extension on AppLocalizations {
//   get mahdimirzadeh => null;
// }

// extension on AppLocalizations {
//   get mobileAppDeveloper => null;
// }

// extension on AppLocalizations {
//   get mobileAppDeveloperDesc => null;
// }

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          context.isDesktopOrTablet
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      children: [
        SEOText(
          // 'Temp text!',
          context.texts.mahdimirzadeh,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleLgBold.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header1,
        ),
        Gap(Insets.sm),
        SEOText(
          // 'Temp text!',
          context.texts.mobileAppDeveloper,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header2,
        ),
        Gap(Insets.lg),
        SEOText(
          // 'Temp text!',
          context.texts.mobileAppDeveloperDesc,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onSurface,
          ),
          textRendererStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
