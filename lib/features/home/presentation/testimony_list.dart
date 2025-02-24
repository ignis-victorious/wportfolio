// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import '../../testimony/presentation/testimony_item.dart';

// PARTS
// PROVIDERS
// -------------

class TestimonyList extends StatelessWidget {
  const TestimonyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _DesktopTestimony();
  }
}

class _DesktopTestimony extends StatelessWidget {
  const _DesktopTestimony({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return TestimonyItem();
      }, childCount: 10), // SliverChildBuilderDelegate
      crossAxisSpacing: 46,
      mainAxisSpacing: 16,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.isDesktop ? 3 : 2,
      ),
    );
  }
}
