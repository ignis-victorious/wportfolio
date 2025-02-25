// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class PoweredByFlutter extends StatelessWidget {
  const PoweredByFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/flutter.png',
          width: 24,
          height: 24,
          color: context.colorScheme.onBackground,
        ), // Image.asset
        const Gap(8),
        Text(
          context.texts.poweredByFlutter,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
