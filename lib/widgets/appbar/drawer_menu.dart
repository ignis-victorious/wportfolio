// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  import FILES
// import 'package:wportfolio/extensions.dart';
// import 'package:wportfolio/widgets/appbar/my_app_bar.dart';
import '../../extensions.dart';
import '../../widgets/appbar/my_app_bar.dart';

// PARTS
part 'drawer_menu.g.dart';
// PROVIDERS
// -------------

class DrawerMenu extends ConsumerStatefulWidget {
  const DrawerMenu({super.key});

  @override
  ConsumerState<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends ConsumerState<DrawerMenu>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  ); // AnimationController

  late final _animation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(drawerMenuControllerProvider, (previous, next) {
      if (next.value == true) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
    return ClipRRect(
      child: SlideTransition(
        position: _animation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.surface.withValues(alpha: 0.4),
                blurRadius: 6,
                spreadRadius: 3,
              ), // BoxShadow
            ],
          ), // BoxDecoration
          child: SmallMenu(),
        ),
      ),
    );
  }
}

@riverpod
class DrawerMenuController extends _$DrawerMenuController {
  @override
  FutureOr<bool> build() {
    return false;
  }

  open() {
    update(state) => true;
  }

  close() {
    update(state) => false;
  }
}
