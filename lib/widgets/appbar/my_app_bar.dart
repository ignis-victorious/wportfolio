// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wportfolio/shared/app_theme_controller.dart';
//  import FILES
import '../../constants/app_menu_list.dart';
import '../../app_text_styles.dart';
import '../../style/app_size.dart';
import '../language_switch.dart';
import 'app_bar_drawer_icon.dart';
import '../../extensions.dart';
import 'drawer_menu.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// PARTS
// PROVIDERS
// -------------

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
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
        ),
        if (!context.isDesktop) const DrawerMenu(),
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
                  isSelected: GoRouterState.of(context).fullPath == e.path,
                  // isSelected: true,
                  onTap: () {
                    context.go(e.path);
                    // GoRouter.of(context).go(e.path);
                  },
                ),
              )
              .toList(),
    );
  }
}

class SmallMenu extends StatelessWidget {
  const SmallMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          AppMenuList.getItems(context)
              .map(
                (e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: GoRouterState.of(context).fullPath == e.path,
                  // isSelected: true,
                  onTap: () {
                    context.go(e.path);
                  },
                ),
              )
              .toList(),
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
        child: Text(
          text,
          style: SmallTextStyles().bodyLgMedium.copyWith(
            color:
                isSelected
                    ? context.colorScheme.onBackground
                    : context.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

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
