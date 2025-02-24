// -------------
//  import LIBRARIES
import 'package:flutter/material.dart';
//  import FILES
import 'package:wportfolio/extensions.dart';
import '../../../course/presentation/course_item.dart';
// PARTS
// PROVIDERS
// -------------

class HomeCourseList extends StatelessWidget {
  const HomeCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[_HomeCourseListDesktop()]);
  }
}

class _HomeCourseListDesktop extends StatelessWidget {
  const _HomeCourseListDesktop({super.key});

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
