// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';
//  import FILES
import '../../../style/app_size.dart';
import '../../../widgets/styled_button.dart';
// PARTS
// PROVIDERS
// -------------

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.courses),
        Gap(Insets.lg),
        OutlineButton(title: context.texts.cooperationRequest),
      ],
    );
  }
}

class SmallHeroButtons extends StatelessWidget {
  const SmallHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(title: context.texts.courses),
        ),
        Gap(Insets.lg),
        SizedBox(
          width: double.infinity,
          child: OutlineButton(title: context.texts.cooperationRequest),
        ),
      ],
    );
  }
}
