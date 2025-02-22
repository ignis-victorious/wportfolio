// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import '../../../style/app_size.dart';
import 'hero_buttons.dart';
import '../../../features/home/presentation/hero_text.dart';
import 'hero_image.dart';

// PARTS
// PROVIDERS
// -------------

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Fluttter'),
        context.isDesktop || context.isTablet ? _LargeHero() : _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 140),
          child: const HeroImage(),
        ), // ConstrainedBox
        Gap(Insets.xl),
        const HeroText(),
        Gap(Insets.xxl),
        const SmallHeroButtons(),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: HeroImage()),
        Gap(Insets.xxxl),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const HeroText(),
              Gap(Insets.xxl),
              const LargeHeroButtons(),
            ],
          ), // Column // Expanded
        ),
      ],
    ); // Row
  }
}
