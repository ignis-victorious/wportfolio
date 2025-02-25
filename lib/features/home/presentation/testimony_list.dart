// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import '../../testimony/presentation/testimony_item.dart';

// PARTS
// PROVIDERS
// -------------

class TestimonyList extends StatelessWidget {
  const TestimonyList({super.key});

  @override
  Widget build(BuildContext context) {
    // return _PhoneTestimony();
    // return _DesktopTestimony();
    // return context.isDesktopOrTablet ? _DesktopTestimony() : _PhoneTestimony;
    return context.isDesktop ? _DesktopTestimony() : _PhoneTestimony();
  }
}

class _DesktopTestimony extends StatelessWidget {
  const _DesktopTestimony();

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

class _PhoneTestimony extends StatelessWidget {
  const _PhoneTestimony();

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return TestimonyItem();
      },
      separatorBuilder: (context, index) => const Gap(16),
      itemCount: 10,
    ); // SliverList.separated
  }
}
