// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wportfolio/constants/app_icon.dart';
import 'package:wportfolio/extensions.dart';

import '../powered_by_flutter.dart';
import 'my_app_bar.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        children: [
          context.isDesktop ? DesktopFooter() : _PhoneFooter(),
          const Divider(height: 24),
          const PoweredByFlutter(),
          // const Text('Flutter'),
        ],
      ), // Column
    ); // Container
  }
}

class _PhoneFooter extends StatelessWidget {
  const _PhoneFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [AppLogo(), SmallMenu(), _FooterLinks()]); // Column
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [AppLogo(), Spacer(), LargeMenu(), Spacer(), _FooterLinks()],
    ); // Row
  }
}

class _FooterLinks extends StatelessWidget {
  const _FooterLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.youtube),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.linkedin),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.github),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.instagram),
      ],
    );
  }
}

class _FooterLinkItem extends StatelessWidget {
  const _FooterLinkItem({required this.onPressed, required this.icon});

  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          context.colorScheme.onBackground,
          BlendMode.srcIn,
        ),
      ), // SvgPicture.asset // IconButton
    );
  }
}
