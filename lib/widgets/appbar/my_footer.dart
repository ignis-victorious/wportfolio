// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/extensions.dart';

import 'my_app_bar.dart';
//  import FILES

// PARTS
// PROVIDERS
// -------------

class MyFooter extends StatelessWidget {
  const MyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        children: [
          context.isDesktop ? DesktopFooter() : PhoneFooter(),
          const Divider(height: 24),
          const Text('Flutter'),
        ],
      ), // Column
    ); // Container
  }
}

class PhoneFooter extends StatelessWidget {
  const PhoneFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [AppLogo(), SmallMenu()]); // Column
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [AppLogo(), Spacer(), LargeMenu(), Spacer()]); // Row
  }
}
