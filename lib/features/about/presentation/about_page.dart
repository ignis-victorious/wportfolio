// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';
import 'package:wportfolio/widgets/appbar/app_scaffold.dart';

import '../../../widgets/seo_text.dart';

//  import FILES
// PARTS
// PROVIDERS
// -------------

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      Image.asset('assets/images/about_picture.jpeg').image,
                ), // CircleAvatar
                const Gap(16),
                SEOText(
                  context.texts.aboutTitle,
                  style: context.textStyle.titleSmBold,
                ), // SEOText
                const Gap(16),
                SEOText(
                  context.texts.aboutDescription,
                  style: context.textStyle.bodyMdMedium,
                ), // SEOText
              ],
            ),
          ),
        ),
      ],
    );
  }
}
