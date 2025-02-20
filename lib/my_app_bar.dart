// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/extensions.dart';
//  import FILES
import 'app_text_styles.dart';
// PARTS
// PROVIDERS
// -------------

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppLogo(),
        Spacer(),
        AppMenus(),
        Spacer(),
        LanguageToggle(),
        // Spacer(),
        ThemeToggle(),
      ],
    );
  }
}

// --------------------------

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    debugPrint(width.toString());
    return Text(
      'Portfolio',  // ''The Cecca!',
      style: context.textStyle.titleLgBold ,
      // style: width > 600 ? LargeTextStyles().titleLgBold : SmallTextStyles().titleLgBold,
      );
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text('Home'),
        const Text('Courses'),
        const Text('Blog'),
        const Text('About'),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(child: const Text('Italian')),
          PopupMenuItem(child: const Text('Engllish')),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: false,
      onChanged: (value) {},
    );
  }
}
