// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';

import '../../features/home/presentation/experiences_body.dart';
import '../../features/home/presentation/hero_widget.dart';
import '../../features/home/presentation/home_course_list.dart';
import '../../features/home/presentation/testimony_list.dart';
import '../../style/app_size.dart';
import '../background_blur.dart';
import '../home_title_subtitle.dart';
import 'my_app_bar.dart';
import 'my_footer.dart';
//  import FILES
// PARTS
// PROVIDERS
// -------------

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.slivers});
  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Title'),),
      body: Stack(
        children: <Widget>[
          const BackgroundBlur(),
          HeroWidget(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
              padding: EdgeInsets.only(top: context.insets.appBarHeight),
              child: CustomScrollView(
                // child: SingleChildScrollView(
                // child: Column(children: [HeroWidget(), HomeCourseList(), ExperiencesBody()]),
                slivers: [
                  ...slivers,

                  const SliverToBoxAdapter(child: MyFooter()),
                ],
              ),
            ),
          ),
          const MyAppBar(),
        ],
      ),
    );
  }
}


// SliverToBoxAdapter(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: context.insets.padding,
//                       ),
//                       child: HeroWidget(),
//                     ),
//                   ),
//                   SliverGap(context.insets.gap),
//                   SliverToBoxAdapter(child: HomeCourseList()),
//                   SliverGap(context.insets.gap),
//                   SliverToBoxAdapter(child: ExperiencesBody()),
//                   SliverGap(context.insets.gap),
//                   SliverToBoxAdapter(
//                     child: HomeTitleSubtitle(
//                       title: context.texts.testimonies,
//                       subTitle: context.texts.testimoniesDescription,
//                     ),
//                   ),
//                   SliverGap(323),
//                   SliverPadding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: context.insets.padding,
//                     ),
//                     sliver: TestimonyList(),
//                   ),