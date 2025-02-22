// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/seo_renderer.dart';

import '../../../style/app_size.dart';
import '../../../widgets/seo_text.dart';
import 'package:wportfolio/extensions.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

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
          context.texts.mobileAppDeveloper,
          textAlign:
              context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.textColorBackground,
          ),
          textRendererStyle: TextRendererStyle.header2,
        ),
        Gap(Insets.lg),
        SEOText(
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
