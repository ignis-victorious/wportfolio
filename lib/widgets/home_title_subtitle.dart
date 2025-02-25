// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wportfolio/extensions.dart';

import 'seo_text.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class HomeTitleSubtitle extends StatelessWidget {
  const HomeTitleSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SEOText(
            title,
            style: context.textStyle.titleSmBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
            textRendererStyle: TextRendererStyle.header3,
          ),
          SEOText(
            subTitle,
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
            ),
            textRendererStyle: TextRendererStyle.header4,
          ),
        ],
      ),
    );
  }
}
