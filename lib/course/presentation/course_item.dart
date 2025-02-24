// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:wportfolio/extensions.dart';

import '../../widgets/seo_text.dart';
import '../../widgets/styled_card.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      borderRadius: BorderRadius.all(Radius.zero),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                child: Image.network(
                  'https://dummyimage.com/350x250/33cc99/fff',
                  fit: BoxFit.cover,
                ), // Image.network
              ), // ClipRRect
            ), // AspectRatio
            const Gap(24),
            SEOText(
              'Random text',
              style: context.textStyle.bodyLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRendererStyle: TextRendererStyle.header4,
            ), // SEOText
            const Gap(8),
            Expanded(
              child: SEOText(
                'Some description text for testing',
                style: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onSurface,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );

    // SEOText(String text, TextAl bbign? textAlign, TextRendererStyle textRendererStyle),
  }
}
