// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import 'style/app_size.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// PARTS
// PROVIDERS
// -------------

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      height: context.insets.appBarHeight,
      // color: Theme.of(context).appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth:  Insets.maxWidth ),
        child: Row(
          children: <Widget>[
            AppLogo(),
            Spacer(),
            AppMenus(),
            Spacer(),
            LanguageToggle(),
            // Spacer(),
            ThemeToggle(),
          ],
        ),
      ),
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
      'Portfolio', // ''The Cecca!',
      style: context.textStyle.titleLgBold,
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
        Text(context.texts.home),
        Text(context.texts.courses),
        Text(context.texts.blog),
        Text(context.texts.about),
    
        // Text(AppLocalizations.of(context)!.home),
        // Text(AppLocalizations.of(context)!.courses),
        // Text(AppLocalizations.of(context)!.blog),
        // Text(AppLocalizations.of(context)!.about),
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
    return Switch(value: false, onChanged: (value) {});
  }
}
