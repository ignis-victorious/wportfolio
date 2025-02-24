// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:wportfolio/features/home/presentation/experiences_body.dart';
// import 'package:wportfolio/features/home/presentation/hero_image.dart';
import 'package:wportfolio/features/home/presentation/hero_widget.dart';
import 'package:wportfolio/style/app_size.dart';
import 'package:wportfolio/widgets/background_blur.dart';
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
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: CustomScrollView(
                // child: SingleChildScrollView(
                // child: Column(children: [HeroWidget(), HomeCourseList(), ExperiencesBody()]),
                slivers: [
                  SliverToBoxAdapter(child: HeroWidget()),
                  SliverToBoxAdapter(child: HomeCourseList()),
                  SliverToBoxAdapter(child: ExperiencesBody()),
                  TestimonyList(),
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
