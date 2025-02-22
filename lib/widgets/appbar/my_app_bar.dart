// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wportfolio/shared/app_theme_controller.dart';
//  import FILES
import '../../constants/app_menu_list.dart';
import '../../app_text_styles.dart';
import '../../style/app_size.dart';
import '../language_switch.dart';
import 'app_bar_drawer_icon.dart';
import '../../extensions.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// PARTS
// PROVIDERS
// -------------

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      // color: Colors.red,
      // color: Theme.of(context).appBarTheme.backgroundColor,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: <Widget>[
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenu(),
            Spacer(),
            LanguageSwitch(),
            // Spacer(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(), //Icon(Icons.menu)
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

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.getItems(context)
              .map(
                (e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: true,
                  onTap: () {},
                ),
              )
              .toList(),
      // children: <Widget>[
      //   Text(context.texts.home),
      //   Text(context.texts.courses),
      //   Text(context.texts.blog),
      //   Text(context.texts.about),
      // Text(AppLocalizations.of(context)!.home),
      // Text(AppLocalizations.of(context)!.courses),
      // Text(AppLocalizations.of(context)!.blog),
      // Text(AppLocalizations.of(context)!.about),
      // ],
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const LargeAppBarMenuItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(text, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}

// class LanguageSwitch extends StatelessWidget {
//   const LanguageSwitch({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       itemBuilder: (context) {
//         return <PopupMenuEntry>[
//           PopupMenuItem(child: const Text('Italian')),
//           PopupMenuItem(child: const Text('Engllish')),
//         ];
//       },
//     );
//   }
// }

class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appThemeControllerProvider);
    return Switch(
      value: state.value == ThemeMode.dark,
      onChanged: (value) {
        ref
            .read(appThemeControllerProvider.notifier)
            .changeTheme(value ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
