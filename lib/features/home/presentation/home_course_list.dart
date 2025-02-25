// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import 'package:wportfolio/widgets/home_title_subtitle.dart';
import '../../../course/presentation/course_item.dart';
// PARTS
// PROVIDERS
// -------------

class HomeCourseList extends StatelessWidget {
  const HomeCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HomeTitleSubtitle(
          title: context.texts.courses,
          subTitle: context.texts.courses,
        ),
        const Gap(32),
        context.isDesktop ? _HomeCourseListDesktop() : _HomeCourseListPhone(),
      ],
    );
  }
}

class _HomeCourseListDesktop extends StatelessWidget {
  const _HomeCourseListDesktop();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          Expanded(child: CourseItem()),
          Expanded(child: CourseItem()),
          Expanded(child: CourseItem()),
        ],
      ),
    );
  }
}

class _HomeCourseListPhone extends StatelessWidget {
  const _HomeCourseListPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 240, child: CourseItem()), // SizedBox
            SizedBox(width: 240, child: CourseItem()), // SizedBox
            SizedBox(width: 240, child: CourseItem()), // SizedBox
          ],
        ),
      ),
    );
  }
}
