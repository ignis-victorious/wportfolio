// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:wportfolio/extensions.dart';
import 'package:wportfolio/features/home/presentation/experiences_body.dart';
// import 'package:wportfolio/features/home/presentation/hero_image.dart';
import 'package:wportfolio/features/home/presentation/hero_widget.dart';
import 'package:wportfolio/style/app_size.dart';
import 'package:wportfolio/widgets/appbar/my_footer.dart';
import 'package:wportfolio/widgets/background_blur.dart';
import 'package:wportfolio/widgets/home_title_subtitle.dart';
//  import FILES
import '../../../widgets/appbar/my_app_bar.dart';
import 'home_course_list.dart';
import 'testimony_list.dart';
// PARTS
// PROVIDERS
// -------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.insets.padding,
                      ),
                      child: HeroWidget(),
                    ),
                  ),
                  SliverGap(context.insets.gap),
                  SliverToBoxAdapter(child: HomeCourseList()),
                  SliverGap(context.insets.gap),
                  SliverToBoxAdapter(child: ExperiencesBody()),
                  SliverGap(context.insets.gap),
                  SliverToBoxAdapter(
                    child: HomeTitleSubtitle(
                      title: context.texts.testimonies,
                      subTitle: context.texts.testimoniesDescription,
                    ),
                  ),
                  SliverGap(323),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.insets.padding,
                    ),
                    sliver: TestimonyList(),
                  ),
                  SliverToBoxAdapter(child: MyFooter()),
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
