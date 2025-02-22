// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wportfolio/widgets/appbar/drawer_menu.dart';
//  import FILES
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// PARTS
// PROVIDERS
// -------------

class AppBarDrawerIcon extends ConsumerStatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  ConsumerState<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends ConsumerState<AppBarDrawerIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (!isOpen) {
          controller.forward();
          ref.read(drawerMenuControllerProvider.notifier).open();
        } else {
          controller.reverse();
          ref.read(drawerMenuControllerProvider.notifier).close();
        }
        isOpen = !isOpen;
      },
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animation),
    );
  }
}
